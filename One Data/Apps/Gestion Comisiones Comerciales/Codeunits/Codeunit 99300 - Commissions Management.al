codeunit 99300 "Commissions Management"
{
    // version OneData016.01.00

    Permissions = TableData 113 = rimd;

    trigger OnRun()
    begin
    end;

    var
        GLSetup: Record 98;
        CurrencyFactor: Decimal;
        Text000: Label 'Commission Entry';

    [EventSubscriber(ObjectType::Page, 344, 'OnAfterNavigateFindRecords', '', false, false)]
    local procedure "Page344.OnAfterNavigateFindRecords"(var DocumentEntry: Record 265; DocNoFilter: Text; PostingDateFilter: Text)
    var
        Navigate: Page 344;
        CommissionEntry: Record 99300;
    begin
        CommissionEntry.SETFILTER("Document No.", DocNoFilter);
        Navigate.InsertIntoDocEntry(DocumentEntry, 99300, Text000, CommissionEntry.COUNT);
    end;

    [EventSubscriber(ObjectType::Page, 344, 'OnAfterNavigateShowRecords', '', false, false)]
    local procedure "Page344.OnAfterNavigateShowRecords"(TableID: Integer; DocNoFilter: Text; PostingDateFilter: Text; ItemTrackingSearch: Boolean; var TempDocumentEntry: Record 265 temporary)
    var
        CommissionEntry: Record 99300;
    begin
        CASE TableID OF
            DATABASE::"Commission Entry":
                BEGIN
                    CommissionEntry.RESET;
                    CommissionEntry.SETFILTER("Document No.", DocNoFilter);
                    PAGE.RUN(PAGE::"Commisions Entry", CommissionEntry);
                END;
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnAfterPostSalesDoc', '', false, false)]
    local procedure "CodeUnit80.OnAfterPostSalesDoc"(var SalesHeader: Record 36; var GenJnlPostLine: Codeunit 12; SalesShptHdrNo: Code[20]; RetRcpHdrNo: Code[20]; SalesInvHdrNo: Code[20]; SalesCrMemoHdrNo: Code[20]; CommitIsSuppressed: Boolean)
    var
        SalesInvoiceLine: Record 113;
        CommissionsSetup: Record 99301;
    begin
        // Calculate comissions
        CommissionsSetup.GET;
        IF CommissionsSetup."Calculate Commission" THEN
            CalculateComissionDocument(SalesInvHdrNo, SalesCrMemoHdrNo);
    end;

    procedure CalculateComissionDocument(SalesInvHdrNo: Code[20]; SalesCrMemoHdrNo: Code[20])
    var
        CommissionsSetup: Record 99301;
        Customer: Record 18;
        PaymentTerms: Record 3;
        SalesInvoiceHeader: Record 112;
        SalesCrMemoHeader: Record 114;
        SalesInvoiceLine: Record 113;
        SalesCrMemoLine: Record 115;
        CommissionEntry: Record 99300;
    begin
        // Calculate comissions
        GLSetup.GET;
        CommissionsSetup.GET;
        IF SalesInvHdrNo <> '' THEN BEGIN
            SalesInvoiceHeader.GET(SalesInvHdrNo);
            SalesInvoiceLine.RESET;
            SalesInvoiceLine.SETRANGE("Document No.", SalesInvHdrNo);
            SalesInvoiceLine.SETRANGE(Type, SalesInvoiceLine.Type::Item);
            IF SalesInvoiceLine.FINDFIRST THEN
                REPEAT
                    CLEAR(CommissionEntry);
                    Customer.GET(SalesInvoiceLine."Sell-to Customer No.");
                    CommissionEntry."Customer No." := SalesInvoiceLine."Sell-to Customer No.";
                    CommissionEntry."Customer Name" := SalesInvoiceHeader."Sell-to Customer Name";
                    CommissionEntry."Salesperson Code" := SalesInvoiceHeader."Salesperson Code";
                    CommissionEntry."User ID" := USERID;
                    CommissionEntry."Posting Date" := SalesInvoiceLine."Posting Date";
                    CommissionEntry."Document Type" := CommissionEntry."Document Type"::Invoice;
                    CommissionEntry."Document No." := SalesInvoiceLine."Document No.";
                    CommissionEntry."Document Line No." := SalesInvoiceLine."Line No.";
                    CommissionEntry."Item No." := SalesInvoiceLine."No.";
                    CommissionEntry.Description := SalesInvoiceLine.Description;
                    CommissionEntry."Currency Code" := SalesInvoiceHeader."Currency Code";
                    CommissionEntry.Sales := SalesInvoiceLine.Amount;
                    IF SalesInvoiceHeader."Currency Factor" = 0 THEN
                        CurrencyFactor := 1
                    ELSE
                        CurrencyFactor := SalesInvoiceHeader."Currency Factor";
                    CommissionEntry.Amount := SalesInvoiceLine."Line Amount";
                    CommissionEntry."Amount (LCY)" := SalesInvoiceLine."Line Amount" * CurrencyFactor;
                    CommissionEntry."Sales (LCY)" := SalesInvoiceLine.Amount * CurrencyFactor;
                    CommissionEntry."Profit (LCY)" := CommissionEntry."Sales (LCY)" - (SalesInvoiceLine."Unit Cost (LCY)" * SalesInvoiceLine."Quantity (Base)");
                    CommissionEntry."Allow Line Disc." := SalesInvoiceLine."Allow Line Disc.";
                    CommissionEntry."Line Discount %" := SalesInvoiceLine."Line Discount %";
                    CommissionEntry."Invoice Discount %" := SalesInvoiceHeader."Invoice Discount Value";
                    CommissionEntry."Payment Discount %" := SalesInvoiceHeader."Payment Discount %";
                    CommissionEntry."VAT Tolerance %" := GLSetup."VAT Tolerance %";
                    CommissionEntry."Invoice Discount Amount" := SalesInvoiceLine."Inv. Discount Amount";
                    CommissionEntry."Payment Discount Amount" := SalesInvoiceLine."Pmt. Discount Amount";
                    CommissionEntry."Line Discount Amount" := SalesInvoiceLine."Line Discount Amount";
                    CommissionEntry."Base Discount %" := 0;
                    CommissionEntry."Total Discount Amount" := CommissionEntry."Line Discount Amount";
                    IF CommissionsSetup."Include Inv. Discount %" THEN
                        CommissionEntry."Total Discount Amount" := CommissionEntry."Total Discount Amount" + CommissionEntry."Invoice Discount Amount";
                    IF CommissionsSetup."Include Payment Discount %" THEN
                        CommissionEntry."Total Discount Amount" := CommissionEntry."Total Discount Amount" + CommissionEntry."Payment Discount Amount";
                    IF CommissionEntry."Amount (LCY)" <> 0 THEN
                        CommissionEntry."Base Discount %" := ROUND((CommissionEntry."Total Discount Amount" / CommissionEntry."Amount (LCY)" * 100), 0.01);
                    CommissionEntry."Initial Commission %" := CalculateCommissionInitialInvoice(SalesInvoiceHeader);
                    CommissionEntry."Commissions Group Code" := Customer."Commissions Group Code";
                    CommissionEntry."Commissions Zone Code" := Customer."Commissions Zone Code";
                    CalculateCommissionSalesPerson(CommissionEntry);
                    CommissionEntry."Applied Commission %" := CommissionEntry."Calculated Commission %";
                    ApplyCommission(CommissionEntry);
                    CommissionEntry.INSERT(TRUE);
                UNTIL SalesInvoiceLine.NEXT = 0;
        END;


        IF SalesCrMemoHdrNo <> '' THEN BEGIN
            SalesCrMemoHeader.GET(SalesCrMemoHdrNo);
            SalesCrMemoLine.RESET;
            SalesCrMemoLine.SETRANGE("Document No.", SalesCrMemoHdrNo);
            SalesCrMemoLine.SETRANGE(Type, SalesCrMemoLine.Type::Item);
            IF SalesCrMemoLine.FINDFIRST THEN
                REPEAT
                    CLEAR(CommissionEntry);
                    Customer.GET(SalesCrMemoLine."Sell-to Customer No.");
                    CommissionEntry."Customer No." := SalesCrMemoLine."Sell-to Customer No.";
                    CommissionEntry."Customer Name" := SalesCrMemoHeader."Sell-to Customer Name";
                    CommissionEntry."Salesperson Code" := SalesCrMemoHeader."Salesperson Code";
                    CommissionEntry."User ID" := USERID;
                    CommissionEntry."Posting Date" := SalesCrMemoLine."Posting Date";
                    CommissionEntry."Document Type" := CommissionEntry."Document Type"::"Credit Memo";
                    CommissionEntry."Document No." := SalesCrMemoLine."Document No.";
                    CommissionEntry."Document Line No." := SalesCrMemoLine."Line No.";
                    CommissionEntry."Item No." := SalesCrMemoLine."No.";
                    CommissionEntry.Description := SalesCrMemoLine.Description;
                    CommissionEntry."Currency Code" := SalesCrMemoHeader."Currency Code";
                    CommissionEntry.Sales := SalesCrMemoLine.Amount;
                    IF SalesCrMemoHeader."Currency Factor" = 0 THEN
                        CurrencyFactor := 1
                    ELSE
                        CurrencyFactor := SalesCrMemoHeader."Currency Factor";
                    CommissionEntry."Sales (LCY)" := SalesCrMemoLine.Amount * CurrencyFactor;
                    CommissionEntry."Profit (LCY)" := CommissionEntry."Sales (LCY)" - (SalesCrMemoLine."Unit Cost (LCY)" * SalesCrMemoLine."Quantity (Base)");
                    CommissionEntry."Allow Line Disc." := SalesInvoiceLine."Allow Line Disc.";
                    CommissionEntry."Line Discount %" := SalesCrMemoLine."Line Discount %";
                    IF NOT PaymentTerms.GET(SalesCrMemoHeader."Payment Terms Code") THEN PaymentTerms.INIT;
                    CommissionEntry."Invoice Discount %" := 0;
                    CommissionEntry."Payment Discount %" := SalesCrMemoHeader."Payment Discount %";
                    CommissionEntry."VAT Tolerance %" := GLSetup."VAT Tolerance %";
                    CommissionEntry."Invoice Discount Amount" := SalesCrMemoLine."Inv. Discount Amount";
                    CommissionEntry."Payment Discount Amount" := SalesCrMemoLine."Pmt. Discount Amount";
                    CommissionEntry."Line Discount Amount" := SalesCrMemoLine."Line Discount Amount";
                    CommissionEntry."Base Discount %" := 0;
                    CommissionEntry."Total Discount Amount" := CommissionEntry."Line Discount Amount";
                    IF CommissionsSetup."Include Inv. Discount %" THEN
                        CommissionEntry."Total Discount Amount" := ROUND((CommissionEntry."Total Discount Amount" + CommissionEntry."Invoice Discount Amount" * 100), 0.01);
                    IF CommissionsSetup."Include Payment Discount %" THEN
                        CommissionEntry."Total Discount Amount" := CommissionEntry."Total Discount Amount" + CommissionEntry."Payment Discount Amount";
                    IF CommissionEntry."Amount (LCY)" <> 0 THEN
                        CommissionEntry."Base Discount %" := CommissionEntry."Total Discount Amount" / CommissionEntry."Amount (LCY)";
                    CommissionEntry."Initial Commission %" := CalculateCommissionInitialCrMemo(SalesCrMemoHeader);
                    CommissionEntry."Commissions Group Code" := Customer."Commissions Group Code";
                    CommissionEntry."Commissions Zone Code" := Customer."Commissions Zone Code";
                    CalculateCommissionSalesPerson(CommissionEntry);
                    CommissionEntry."Applied Commission %" := CommissionEntry."Calculated Commission %";
                    ApplyCommission(CommissionEntry);
                    CommissionEntry.INSERT(TRUE);
                UNTIL SalesCrMemoLine.NEXT = 0;
        END
    end;

    local procedure CalculateCommissionInitialInvoice(SalesInvoiceHeader: Record 112): Decimal
    var
        SalespersonPurchaser: Record 13;
    begin
        IF NOT SalespersonPurchaser.GET(SalesInvoiceHeader."Salesperson Code") THEN
            EXIT(0);
        EXIT(SalespersonPurchaser."Commission %");
    end;

    local procedure CalculateCommissionInitialCrMemo(SalesCrMemoHeader: Record 114): Decimal
    var
        SalespersonPurchaser: Record 13;
    begin
        IF NOT SalespersonPurchaser.GET(SalesCrMemoHeader."Salesperson Code") THEN
            EXIT(0);
        EXIT(SalespersonPurchaser."Commission %");
    end;

    local procedure CalculateCommissionSalesPerson(var CommissionEntry: Record 99300): Decimal
    var
        CommissSalesPersonsSetup: Record 99302;
    begin

        CommissSalesPersonsSetup.RESET;
        CommissSalesPersonsSetup.SETCURRENTKEY("Commissions Zone Code", "Commissions Group Code", "Customer No.", "Fecha inicial");
        CommissSalesPersonsSetup.SETFILTER("Fecha inicial", '<=%1', CommissionEntry."Posting Date");
        // First Search commissions directly to customer
        IF CommissionEntry."Customer No." <> '' THEN BEGIN
            CommissSalesPersonsSetup.SETRANGE("Customer No.", CommissionEntry."Customer No.");
            IF CommissSalesPersonsSetup.FINDFIRST THEN BEGIN
                CalculateCommission(CommissionEntry, CommissSalesPersonsSetup);
                EXIT;
            END;
        END;

        CommissSalesPersonsSetup.SETRANGE("Customer No.");
        //IF CommissionEntry."Commissions Zone Code" <> '' THEN
        CommissSalesPersonsSetup.SETRANGE("Commissions Zone Code", CommissionEntry."Commissions Zone Code");
        //IF CommissionEntry."Commissions Group Code" <> '' THEN
        CommissSalesPersonsSetup.SETRANGE("Commissions Group Code", CommissionEntry."Commissions Group Code");
        IF NOT CommissSalesPersonsSetup.FINDFIRST THEN BEGIN
            CommissSalesPersonsSetup.SETRANGE("Commissions Group Code");
            IF NOT CommissSalesPersonsSetup.FINDFIRST THEN BEGIN
                CommissSalesPersonsSetup.SETRANGE("Commissions Zone Code");
                IF NOT CommissSalesPersonsSetup.FINDFIRST THEN BEGIN
                    CommissionEntry."Calculated Commission %" := CommissionEntry."Initial Commission %";
                    CommissionEntry."Forfait %" := 0;
                    EXIT;
                END ELSE BEGIN
                    CalculateCommission(CommissionEntry, CommissSalesPersonsSetup);
                    EXIT
                END;
            END ELSE BEGIN
                CalculateCommission(CommissionEntry, CommissSalesPersonsSetup);
                EXIT
            END;
        END ELSE BEGIN
            CalculateCommission(CommissionEntry, CommissSalesPersonsSetup);
            EXIT
        END;
    end;

    local procedure "CalculateCommissionBaseDiscount%"(var CommissionEntry: Record 99300)
    var
        GLSetup: Record 98;
    begin
        GLSetup.GET;

    end;

    local procedure CalculateCommission(var CommissionEntry: Record 99300; CommissSalesPersons: Record 99302)
    var
        Discount: Decimal;
    begin
        IF (CommissSalesPersons."Forfait %" = 0) OR (CommissionEntry."Base Discount %" <= CommissSalesPersons."Forfait %") THEN BEGIN
            CommissionEntry."Initial Commission %" := CommissSalesPersons."Initial Commission %";
            CommissionEntry."Forfait %" := CommissSalesPersons."Forfait %";
            CommissionEntry."Calculated Commission %" := CommissionEntry."Initial Commission %";
            CommissionEntry."Applied Commission %" := CommissionEntry."Calculated Commission %";
        END ELSE BEGIN
            CommissionEntry."Initial Commission %" := CommissSalesPersons."Initial Commission %";
            CommissionEntry."Forfait %" := CommissSalesPersons."Forfait %";
            Discount := CommissionEntry."Base Discount %" - CommissSalesPersons."Forfait %";
            CommissionEntry."Calculated Commission %" := CommissionEntry."Initial Commission %" - (Discount / 2);
            CommissionEntry."Applied Commission %" := CommissionEntry."Calculated Commission %";
        END;
    END;

    procedure ApplyCommission(var CommissionEntry: Record 99300)
    begin
        CommissionEntry."Amount Commission" := CommissionEntry.Sales * CommissionEntry."Applied Commission %" / 100;
        CommissionEntry."Amount Commission (LCY)" := CommissionEntry."Sales (LCY)" * CommissionEntry."Applied Commission %" / 100;
    end;

    procedure RecalculateCommissionSalesInvoice(SalesInvoiceHeader: Record 112)
    var
        CommissionEntry: Record 99300;
        CommissionsSetup: Record 99301;
    begin
        CommissionsSetup.GET;
        IF NOT CommissionsSetup."Calculate Commission" THEN
            EXIT;

        CommissionEntry.RESET;
        CommissionEntry.SETRANGE("Document Type", CommissionEntry."Document Type"::Invoice);
        CommissionEntry.SETRANGE("Document No.", SalesInvoiceHeader."No.");
        IF CommissionEntry.FINDFIRST THEN
            CommissionEntry.DELETEALL;
        CalculateComissionDocument(SalesInvoiceHeader."No.", '');
    end;

    procedure RecalculateCommissionSalesCrMemo(SalesCrMemoHeader: Record 114)
    var
        CommissionEntry: Record 99300;
        CommissionsSetup: Record 99301;
    begin
        CommissionsSetup.GET;
        IF NOT CommissionsSetup."Calculate Commission" THEN
            EXIT;

        CommissionEntry.RESET;
        CommissionEntry.SETRANGE("Document Type", CommissionEntry."Document Type"::"Credit Memo");
        CommissionEntry.SETRANGE("Document No.", SalesCrMemoHeader."No.");
        IF CommissionEntry.FINDFIRST THEN
            CommissionEntry.DELETEALL;

        CalculateComissionDocument('', SalesCrMemoHeader."No.");
    end;
}

