report 99300 "Salesperson Commission"
{
    // version OneData016.01.00
    //version

    DefaultLayout = RDLC;
    RDLCLayout = './One Data/Apps/Gestion Comisiones Comerciales/RDLCLayout/Salesperson Commission.rdl';
    ApplicationArea = Suite;
    Caption = 'Commission - Salesperson';
    EnableHyperlinks = true;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(Salesperson; 13)
        {
            DataItemTableView = SORTING(Code);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Code";
            column(STRSUBSTNO_Text000_PeriodText_; STRSUBSTNO(Text000, PeriodText))
            {
            }
            column(CurrReport_PAGENO; 1)
            {
            }
            column(COMPANYNAME; COMPANYPROPERTY.DISPLAYNAME)
            {
            }
            column(Salesperson_Purchaser__TABLECAPTION__________SalespersonFilter; TABLECAPTION + ': ' + SalespersonFilter)
            {
            }
            column(SalespersonFilter; SalespersonFilter)
            {
            }
            column(Cust__Ledger_Entry__TABLECAPTION__________CustLedgEntryFilter; "Commission Entry".TABLECAPTION + ': ' + CustLedgEntryFilter)
            {
            }
            column(CustLedgEntryFilter; CustLedgEntryFilter)
            {
            }
            column(PageGroupNo; PageGroupNo)
            {
            }
            column(Salesperson_Purchaser_Code; Code)
            {
            }
            column(Salesperson_Purchaser_Name; Name)
            {
            }
            column(Salesperson_Purchaser__Commission___; "Commission %")
            {
            }
            column(Cust__Ledger_Entry___Sales__LCY__; "Commission Entry"."Sales (LCY)")
            {
            }
            column(Cust__Ledger_Entry___Profit__LCY__; "Commission Entry"."Profit (LCY)")
            {
            }
            column(SalesCommissionAmt; SalesCommissionAmt)
            {
                AutoFormatType = 1;
            }
            column(ProfitCommissionAmt; ProfitCommissionAmt)
            {
                AutoFormatType = 1;
            }
            column(AdjProfit; AdjProfit)
            {
                AutoFormatType = 1;
            }
            column(AdjProfitCommissionAmt; AdjProfitCommissionAmt)
            {
                AutoFormatType = 1;
            }
            column(Salesperson_CommissionCaption; Salesperson___CommissionCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(All_amounts_are_in_LCYCaption; All_amounts_are_in_LCYCaptionLbl)
            {
            }
            column(CommissionEntry_Posting_Date_Caption; "Commission Entry".FIELDCAPTION("Posting Date"))
            {
            }
            column(CommissionEntry_DocumentNo_Caption; "Commission Entry".FIELDCAPTION("Document No."))
            {
            }
            column(CommissionEntry_CustomerNo_Caption; "Commission Entry".FIELDCAPTION("Customer No."))
            {
            }
            column(CommissionEntry_SalesLCY_Caption; "Commission Entry".FIELDCAPTION("Sales (LCY)"))
            {
            }
            column(CommissionEntry_ProfitLCY_Caption; "Commission Entry".FIELDCAPTION("Profit (LCY)"))
            {
            }
            column(CommissionEntry_CalcultatedCommssion_Caption; "Commission Entry".FIELDCAPTION("Calculated Commission %"))
            {
            }
            column(CommissionEntry_AmountLCY_Caption; "Commission Entry".FIELDCAPTION("Amount (LCY)"))
            {
            }
            column(CommissionEntry_AppliedCommission_Caption; "Commission Entry".FIELDCAPTION("Applied Commission %"))
            {
            }
            column(SalesCommissionAmt_Control32Caption; SalesCommissionAmt_Control32CaptionLbl)
            {
            }
            column(ProfitCommissionAmt_Control33Caption; ProfitCommissionAmt_Control33CaptionLbl)
            {
            }
            column(AdjProfitCommissionAmt_Control45Caption; AdjProfitCommissionAmt_Control45CaptionLbl)
            {
            }
            column(Salesperson_Purchaser_Commission_Caption; FIELDCAPTION("Commission %"))
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            dataitem("Commission Entry"; 99300)
            {
                //XPP Agregat cometes en Salesperson Code, Posting Date, Document Type ... .
                DataItemLink = "Salesperson Code" = FIELD(Code);
                DataItemTableView = SORTING("Salesperson Code", "Posting Date")
                                            WHERE("Document Type" = FILTER(Invoice));

                RequestFilterFields = "Posting Date";
                column(CommissionEntry_PostingDate; FORMAT("Posting Date"))
                {
                }
                column(CommissionEntry_DocumentNo; "Document No.")
                {
                }
                column(CommissionEntry_CustomerNo; "Customer No.")
                {
                }
                column(ComissionEntry_Amount; "Amount (LCY)")
                {
                }
                column(CommissionEntry_SalesLCY; "Sales (LCY)")
                {
                }
                column(CommissionEntry_ProfitLCY; "Profit (LCY)")
                {
                }
                column(SalesCommissionAmt_Control32; SalesCommissionAmt)
                {
                    AutoFormatType = 1;
                }
                column(ProfitCommissionAmt_Control33; ProfitCommissionAmt)
                {
                    AutoFormatType = 1;
                }
                column(AdjProfitCommissionAmt_Control34; AdjProfitCommissionAmt)
                {
                    AutoFormatType = 1;
                }
                //XPP Afegit la variable de la taula Salesperson/Purcharser...
                column(Salesperson_Purchaser__Name; SalespersonPurchaser.Name)
                {
                }
                column(CommissionEntry_ZoneCode; "Commissions Zone Code")
                {
                }
                column(CommissionEntry_GroupCode; "Commissions Group Code")
                {
                }
                column(CommissionEntry_CalculateCommission; "Calculated Commission %")
                {
                    DecimalPlaces = 2 : 2;
                }
                column(GetUrlForReportDrilldown; GetUrlForReportDrilldown("Document Type", "Document No."))
                {
                }

                trigger OnAfterGetRecord()

                begin
                    SalesCommissionAmt := "Commission Entry"."Amount Commission (LCY)";
                    ProfitCommissionAmt := ROUND("Profit (LCY)" * "Commission Entry"."Forfait %" / 100);
                    AdjProfitCommissionAmt := "Commission Entry"."Profit (LCY)" - SalesCommissionAmt;
                    If PrintOnlyWithCommission and (SalesCommissionAmt = 0) then
                        CurrReport.skip();
                end;

                trigger OnPreDataItem()
                begin

                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF PrintOnlyOnePerPage THEN
                    PageGroupNo := PageGroupNo + 1;

            end;


            trigger OnPreDataItem()
            begin
                PageGroupNo := 1;

            end;

        }

    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(PrintOnlyOnePerPage; PrintOnlyOnePerPage)
                    {
                        ApplicationArea = Suite;
                        Caption = 'New Page per Person';
                        ToolTip = 'Specifies if each person''s information is printed on a new page if you have chosen two or more persons to be included in the report.';
                    }

                    field(PrintOnlyWithCommission; PrintOnlyWithCommission)
                    {
                        ApplicationArea = Suite;
                        Caption = 'Just with commission';
                        ToolTip = 'Print the commission when is more than 0';
                    }

                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        //XPP Afegit variable de la taula Salesperson/Purchaser
        SalespersonFilter := SalespersonPurchaser.GETFILTERS;
        CustLedgEntryFilter := "Commission Entry".GETFILTERS;
        PeriodText := "Commission Entry".GETFILTER("Posting Date");
    end;

    var
        Text000: Label 'Period: %1';
        SalespersonFilter: Text;
        CustLedgEntryFilter: Text;
        PeriodText: Text;
        AdjProfit: Decimal;
        ProfitCommissionAmt: Decimal;
        AdjProfitCommissionAmt: Decimal;
        SalesCommissionAmt: Decimal;
        PrintOnlyOnePerPage: Boolean;

        PrintOnlyWithCommission: Boolean;
        PageGroupNo: Integer;
        Salesperson___CommissionCaptionLbl: Label 'Salesperson - Commission';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        All_amounts_are_in_LCYCaptionLbl: Label 'All amounts are in LCY';
        Cust__Ledger_Entry__Posting_Date_CaptionLbl: Label 'Posting Date';
        SalesCommissionAmt_Control32CaptionLbl: Label 'Sales Commission (LCY)';
        ProfitCommissionAmt_Control33CaptionLbl: Label 'Adjusted Profit (LCY)';
        AdjProfitCommissionAmt_Control45CaptionLbl: Label 'Adjusted Profit Commission (LCY)';
        TotalCaptionLbl: Label 'Total';

        //XPP Afegit variable amb la taula Salesperson/Purchaser...
        SalespersonPurchaser: Record 13;

    local procedure GetUrlForReportDrilldown(DocumentType: Option " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund,,,,,,,,,,,,,,,Bill; DocumentNo: Code[20]): Text
    var
        SalesInvoiceHeader: Record 112;
        SalesCrMemoHeader: Record 114;
    begin
        // Generates a URL to the report which sets tab "Item" and field "Field1" on the request page, such as
        // dynamicsnav://hostname:port/instance/company/runreport?report=5801<&Tenant=tenantId>&filter=Item.Field1:1100.
        // TODO
        // Eventually leverage parameters 5 and 6 of GETURL by adding ",Item,TRUE)" and
        // use filter Item.SETFILTER("No.",'=%1',ItemNumber);
        CASE DocumentType OF
            DocumentType::Invoice:
                BEGIN
                    SalesInvoiceHeader.SETFILTER("No.", DocumentNo);
                    EXIT(GETURL(CURRENTCLIENTTYPE, COMPANYNAME, OBJECTTYPE::Page, PAGE::"Posted Sales Invoice", SalesInvoiceHeader, TRUE));
                END;
            DocumentType::"Credit Memo":
                BEGIN
                    SalesCrMemoHeader.SETFILTER("No.", DocumentNo);
                    EXIT(GETURL(CURRENTCLIENTTYPE, COMPANYNAME, OBJECTTYPE::Page, PAGE::"Posted Sales Credit Memo", SalesCrMemoHeader, TRUE));
                END;
        END;
    end;
}

