page 70108 "Change GlobDim Vend. Led. Ent,"
{
    PageType = Card;
    SourceTable = "Vendor Ledger Entry";
    CaptionML = ENU = 'Change Global Dimensions Cust. Ledger Entry',
                ESP = 'Cambiar dimen. globales Movs. cliente';
    Permissions = TableData "G/L Entry" = imd,
                  TableData "Cust. Ledger Entry" = imd,
                  TableData "Vendor Ledger Entry" = imd,
                  TableData "Item Ledger Entry" = imd,
                  TableData "Sales Shipment Header" = imd,
                  TableData "Sales shipment line" = imd,
                  TableData "Sales Invoice Header" = imd,
                  TableData "Sales Invoice Line" = imd,
                  TableData "Sales Cr.Memo Header" = imd,
                  TableData "Sales Cr.Memo Line" = imd,
                  TableData "Purch. Rcpt. Header" = imd,
                  TableData "Purch. Rcpt. Line" = imd,
                  TableData "Purch. Inv. Header" = imd,
                  TableData "Purch. Inv. Line" = imd,
                  TableData "Purch. Cr. Memo Hdr." = imd,
                  TableData "Purch. Cr. Memo Line" = imd,
                  TableData "Job Ledger Entry" = imd,
                  TableData "Standard Sales Line" = imd,
                  TableData "Standard Purchase Line" = imd,
                  TableData "Res. Ledger Entry" = imd,
                  TableData "Bank Account Ledger Entry" = imd,
                  TableData "Phys. Inventory Ledger Entry" = imd,
                  TableData "Issued Reminder Header" = imd,
                  TableData "Issued Fin. Charge Memo Header" = imd,
                  TableData "Detailed Cust. Ledg. Entry" = imd,
                  TableData "Detailed Vendor Ledg. Entry" = imd,
                  TableData "Job Task" = imd,
                  TableData "Job Planning Line" = imd,
                  TableData "Job WIP G/L Entry" = imd,
                  TableData "Sales Header Archive" = imd,
                  TableData "Sales Line Archive" = imd,
                  TableData "Purchase Header Archive" = imd,
                  TableData "Purchase Line Archive" = imd,
                  TableData "FA Ledger Entry" = imd,
                  TableData "Maintenance Ledger Entry" = imd,
                  TableData "Ins. Coverage Ledger Entry" = imd,
                  TableData "Value Entry" = imd,
                  TableData "Capacity Ledger Entry" = imd,
                  TableData "Service Ledger Entry" = imd,
                  TableData "Warranty Ledger Entry" = imd,
                  TableData "Service Contract Header" = imd,
                  TableData "Filed Service Contract Header" = imd,
                  TableData "Filed Contract Line" = imd,
                  TableData "Return Shipment Header" = imd,
                  TableData "Return Shipment Line" = imd,
                  TableData "Return Receipt Header" = imd,
                  TableData "Return Receipt Line" = imd,
                  TableData "Dimensions Field Map" = imd,
                  TableData "Cartera Doc." = imd,
                  TableData "Posted Cartera Doc." = imd,
                  TableData "Closed Cartera Doc." = imd;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                    trigger OnValidate()
                    begin
                    end;
                }

                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                    trigger OnValidate()
                    begin
                    end;

                }
                field(NewGlobalDim1Code; NewGlobalDim1Code)
                {
                    ApplicationArea = All;
                    Editable = true;
                    CaptionClass = '1,1,1';
                    CaptionML = ESP = 'New Global Dimension 1 Code';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
                }
                field(NewGlobalDim2Code; NewGlobalDim2Code)
                {
                    ApplicationArea = All;
                    Editable = true;
                    CaptionClass = '1,1,2';
                    CaptionML = ESP = 'New Global Dimension 2 Code';
                    TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
                }

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Cambiar")
            {
                ApplicationArea = All;
                CaptionML = ESP = 'Cambiar', ENU = 'Change';
                trigger OnAction()
                begin
                    if confirm(Text003, false) then begin
                        Rec."Global Dimension 1 Code" := NewGlobalDim1Code;
                        Rec."Global Dimension 2 Code" := NewGlobalDim2Code;
                        rec.modify;
                        message(Text016)
                    end;
                end;

            }
        }
    }
    var
        Text000: TextConst ENU = ' and ', ESP = ' y ';
        Text001: TextConst ENU = 'You must run this batch job twice to reverse the global dimensions.', ESP = 'Debe ejecutar este proceso dos veces para invertir las dim. globales.';
        Text002: TextConst ENU = '%1\You cannot use it as %2.', ESP = '%1\No puede usarlo como %2.';
        Text003: TextConst ENU = 'Are you sure that you want to change ?', ESP = 'Este proceso SOLO cambia las dimensiones del mov. de cliente y no de los registros relacionados.\¿Está seguro de que quiere cambiarlo?';
        Text004: TextConst ENU = 'The following dimensions have been successfully changed:\%1.', ESP = 'Las dim. siguientes han sido cambiadas correctamente:\%1.';
        Text005: TextConst ENU = 'Database information\', ESP = 'Información base datos\';
        Text006: TextConst ENU = ' No. of Records        #1######\', ESP = ' Nº de registros       #1######\';
        Text007: TextConst ENU = ' Progress              @2@@@@@@@@@@@@@\', ESP = ' Progreso              @2@@@@@@@@@@@@@\';
        Text008: TextConst ENU = ' Estimated Ending Time #3#######################\', ESP = ' Tmp. finaliz. estimad.#3#######################\';
        Text009: TextConst ENU = 'Table information\', ESP = 'Tabla información\';
        Text010: TextConst ENU = ' Company               #4#######################\', ESP = ' Empresa               #4#######################\';
        Text011: TextConst ENU = ' Table                 #5#######################\', ESP = ' Tabla                 #5#######################\';
        Text012: TextConst ENU = ' No. of Records        #6######\', ESP = ' Nº de registros       #6######\';
        Text013: TextConst ENU = ' Progress              @7@@@@@@@@@@@@@', ESP = ' Progreso              @7@@@@@@@@@@@@@';
        Text014: TextConst ENU = 'Please wait while the operation is being completed.', ESP = 'Espere mientras se completa la operación.';
        Text015: TextConst ENU = '<Hours24>:<Minutes,2>', ESP = '<Hours24>:<Minutes,2>';
        Text016: TextConst ENU = 'Global dimensions changed', ESP = 'Dimensiones globales cambiadas';

        DimVal: Record "Dimension Value";
        ItemBudgetEntry: Record "Item Budget Entry";
        GLSetup: Record "General Ledger Setup";
        GLAcc: Record "G/L Account";
        GLEntry: Record "G/L Entry";
        Cust: Record "Customer";
        CustLedgEntry: Record "Cust. Ledger Entry";
        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
        Vend: Record "Vendor";
        VendorLedgEntry: Record "Vendor Ledger Entry";
        DtldVendLedgEntry: Record "Detailed Vendor Ledg. Entry";
        Item: Record "Item";
        ItemLedgEntry: Record "Item Ledger Entry";
        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        PurchHeader: Record "Purchase Header";
        PurchLine: Record "Purchase Line";
        GenJnlLine: Record "Gen. Journal Line";
        ItemJnlLine: Record "Item Journal Line";
        GLBudgetEntry: Record "G/L Budget Entry";
        SalesShptHeader: Record "Sales Shipment header";
        SaleShptLine: Record "Sales Shipment Line";
        SalesInvHeader: Record "Sales Invoice Header";
        SalesInvLine: Record "Sales Invoice Line";
        ReturnRcptHeader: Record "Return Receipt Header";
        ReturnRcptLine: Record "Return Receipt Line";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        SalesCrMemoLine: Record "Sales Cr.Memo Line";
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        PurchRcptLine: Record "Purch. Rcpt. Line";
        PurchInvHeader: Record "Purch. Inv. Header";
        PurchInvLine: Record "Purch. Inv. Line";
        PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        ServHeader: Record "Service Header";
        ServLine: Record "Service Line";
        ServShptHeader: Record "Service Shipment Header";
        ServShptLine: Record "Service Shipment Line";
        ServInvHeader: Record "Service Invoice Header";
        ServInvLine: Record "Service Invoice Line";
        ServCrMemoHeader: Record "Service Cr.Memo Header";
        ServCrMemoLine: Record "Service Cr.Memo Line";
        ReturnShptHeader: Record "Return Shipment Header";
        ReturnShptLine: Record "Return Shipment Line";
        ResGr: Record "Resource Group";
        Res: Record "Resource";
        Job: Record "Job";
        JobLedgEntry: Record "Job Ledger Entry";
        ResLedgEntry: Record "Res. Ledger Entry";
        StdSalesLine: Record "Standard Sales Line";
        StdPurchLine: Record "Standard Purchase Line";
        ValueEntry: Record "Value Entry";
        CapLedgEntry: Record "Capacity Ledger Entry";
        ResJnlLine: Record "Res. Journal Line";
        JobJnlLine: Record "Job Journal Line";
        GenJnlAlloc: Record "Gen. Jnl. Allocation";
        ReqLine: Record "Requisition Line";
        BankAcc: Record "Bank Account";
        BankAccLedgEntry: Record "Bank Account Ledger Entry";
        PhysInvtLedgEntry: Record "Phys. Inventory Ledger Entry";
        ReminderHeader: Record "Reminder Header";
        IssuedReminderHeader: Record "Issued Reminder Header";
        FinChrgMemoHeader: Record "Finance Charge Memo Header";
        IssuedFinChrgMemoHeader: Record "Issued Fin. Charge Memo Header";
        Employee: Record "Employee";
        ProdOrder: Record "Production Order";
        ProdOrderLine: Record "Prod. Order Line";
        ProdOrderComp: Record "Prod. Order Component";
        FA: Record "Fixed Asset";
        FALedgEntry: Record "FA Ledger Entry";
        FAAlloc: Record "FA Allocation";
        FAJnlLine: Record "FA Journal Line";
        MaintenanceLedgEntry: Record "Maintenance Ledger Entry";
        Insurance: Record "Insurance";
        InsCovLedgEntry: Record "Ins. Coverage Ledger Entry";
        InsuranceJnlLine: Record "Insurance Journal Line";
        RespCenter: Record "Responsibility Center";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        Campaign: Record "Campaign";
        SalesHeaderArchive: Record "Sales Header Archive";
        SalesLineArchive: Record "Sales Line Archive";
        PurchHeaderArchive: Record "Purchase Header Archive";
        PurchLineArchive: Record "Purchase Line Archive";
        DimSetEntry: Record "Dimension Set Entry";
        DefaultDim: Record "Default Dimension";
        DimBuf: Record "Dimension Buffer";
        WarrantyLedgerEntry: Record "Warranty Ledger Entry";
        ServiceLedgerEntry: Record "Service Ledger Entry";
        ItemCharge: Record "Item Charge";
        TransferHeader: Record "Transfer Header";
        TransferLine: Record "Transfer Line";
        TransferShipmentHeader: Record "Transfer Shipment Header";
        TransferShipmentLine: Record "Transfer Shipment Line";
        TransferReceiptHeader: Record "Transfer Receipt Header";
        TransferReceiptLine: Record "Transfer Receipt Line";
        WorkCenter: Record "Work Center";
        PlanningComponent: Record "Planning Component";
        ServItemLine: Record "Service Item Line";
        JobTask: Record "Job Task";
        JobTaskDim: Record "Job Task Dimension";
        JobWIPEntry: Record "Job WIP Entry";
        JobWIPGLEntry: Record "Job WIP G/L Entry";
        StdGenJnlLine: Record "Standard General Journal Line";
        StdItemJnlLine: Record "Standard Item Journal Line";
        ServCtrHeader: Record "Service Contract Header";
        FiledServCtrHeader: Record "Filed Service Contract Header";
        StdServLine: Record "Standard Service Line";
        CarteraDoc: Record "Cartera Doc.";
        PostedCarteraDoc: Record "Posted Cartera Doc.";
        ClosedCarteraDoc: Record "Closed Cartera Doc.";
        TempDefaultDimDimensionsFieldMap: Record "Dimensions Field Map" temporary;
        TempDimSetDimensionsFieldMap: Record "Dimensions Field Map" temporary;
        IndicatorWindow: Dialog;
        NewGlobalDim1Code: Code[20];
        NewGlobalDim2Code: Code[20];
        DatabaseRecords: Integer;
        CheckedDatabaseRecords: Integer;
        TableRecords: Integer;
        CheckedTableRecords: Integer;
        StartTime: Time;
        StartDate: Date;
        ConfirmationMessage: Text[250];



    procedure GetDefaultJobTaskDim(JobNo: Code[20]; JobTaskNo: Code[20]; var GlobalDim1Value: Code[20]; var GlobalDim2Value: Code[20]);
    begin
        GlobalDim1Value := '';
        GlobalDim2Value := '';

        JobTaskDim.SETRANGE("Job No.", JobNo);
        JobTaskDim.SETRANGE("Job Task No.", JobTaskNo);
        IF JobTaskDim.FINDSET THEN
            REPEAT
                IF JobTaskDim."Dimension Code" = NewGlobalDim1Code THEN
                    GlobalDim1Value := JobTaskDim."Dimension Value Code";
                IF JobTaskDim."Dimension Code" = NewGlobalDim2Code THEN
                    GlobalDim2Value := JobTaskDim."Dimension Value Code";
            UNTIL JobTaskDim.NEXT = 0;
    end;

    procedure OpenIndicator();
    begin
        IndicatorWindow.OPEN(
          Text005 +
          Text006 +
          Text007 +
          Text008 +
          Text009 +
          Text010 +
          Text011 +
          Text012 +
          Text013);
    end;

    procedure UpdateGeneralInfo(CompanyName: Text[100]; TableName: Text[50]; CurrentTableRecords: Integer);
    begin
        TableRecords := CurrentTableRecords;
        CheckedTableRecords := 0;
        IndicatorWindow.UPDATE(1, DatabaseRecords);
        IF DatabaseRecords <> 0 THEN
            IndicatorWindow.UPDATE(2, ROUND(CheckedDatabaseRecords / DatabaseRecords * 10000, 1))
        ELSE
            IndicatorWindow.UPDATE(2, 0);
        IF CheckedDatabaseRecords <> 0 THEN
            IndicatorWindow.UPDATE(3, CalcEndingTime(TODAY, TIME))
        ELSE
            IndicatorWindow.UPDATE(3, Text014);
        IndicatorWindow.UPDATE(4, CompanyName);
        IndicatorWindow.UPDATE(5, TableName);
        IndicatorWindow.UPDATE(6, CurrentTableRecords);
        CheckedDatabaseRecords := CheckedDatabaseRecords + CurrentTableRecords;
    end;

    local procedure UpdateProgressInfo();
    begin
        IF TableRecords <> 0 THEN
            IndicatorWindow.UPDATE(7, ROUND(CheckedTableRecords / TableRecords * 10000, 1))
        ELSE
            IndicatorWindow.UPDATE(7, 0);
    end;

    procedure CalcEndingTime(PresentDate: Date; PresentTime: Time): Text[250];
    var
        RemainingTime: Integer;
        EndingDate: Date;
        EndingTime: Time;
    begin
        IF PresentDate > StartDate THEN
            RemainingTime := ((PresentDate - StartDate) * 8640000) + (235959T - StartTime) + (PresentTime - 000000T)
        ELSE
            RemainingTime := (PresentTime - StartTime);
        RemainingTime := ROUND((RemainingTime / CheckedDatabaseRecords) * (DatabaseRecords - CheckedDatabaseRecords), 1);
        EndingDate := StartDate + ABS(ROUND(RemainingTime / 360000, 1));
        EndingTime := StartTime + ABS(ROUND(RemainingTime MOD 360000, 1));
        IF EndingTime < StartTime THEN
            EndingDate := EndingDate + 1;
        EXIT(FORMAT(EndingDate) + ' ' + FORMAT(EndingTime, 0, Text015));
    end;

    procedure InitializeRequest(NewGlobalDim1CodeFrom: Code[20]; NewGlobalDim2CodeFrom: Code[20]);
    begin
        NewGlobalDim1Code := NewGlobalDim1CodeFrom;
        NewGlobalDim2Code := NewGlobalDim2CodeFrom;
    end;

    procedure GetDefaultDim(No: Code[20]; Global1FieldRef: FieldRef; Global2FieldRef: FieldRef);
    begin
        Global1FieldRef.VALUE := '';
        Global2FieldRef.VALUE := '';

        DefaultDim.SETRANGE("Table ID", Global1FieldRef.RECORD.NUMBER);
        DefaultDim.SETRANGE("No.", No);
        IF DefaultDim.FINDSET THEN
            REPEAT
                IF DefaultDim."Dimension Code" = NewGlobalDim1Code THEN
                    Global1FieldRef.VALUE := DefaultDim."Dimension Value Code";
                IF DefaultDim."Dimension Code" = NewGlobalDim2Code THEN
                    Global2FieldRef.VALUE := DefaultDim."Dimension Value Code";
            UNTIL DefaultDim.NEXT = 0;
    end;

    procedure AddToDefaultDimTempTable(TableNo: Integer; Global1FieldNo: Integer; Global2FieldNo: Integer; IDFieldNo: Integer);
    begin
        AddToTempTable(TempDefaultDimDimensionsFieldMap, TableNo, Global1FieldNo, Global2FieldNo, IDFieldNo);
    end;

    procedure AddToDimSetTempTable(TableNo: Integer; Global1FieldNo: Integer; Global2FieldNo: Integer; IDFieldNo: Integer);
    begin
        AddToTempTable(TempDimSetDimensionsFieldMap, TableNo, Global1FieldNo, Global2FieldNo, IDFieldNo);
    end;

    procedure ChangeGlobalsInTables(TempTableOption: Option DefaultDimTables,DimSetTables);
    var
        FieldRecordRef: RecordRef;
        TempRecRef: RecordRef;
        TableNoFieldRef: FieldRef;
        TableNumber: Integer;
        TableNoFieldNumber: Integer;
    begin
        CASE TempTableOption OF
            TempTableOption::DefaultDimTables:
                FieldRecordRef.GETTABLE(TempDefaultDimDimensionsFieldMap);
            TempTableOption::DimSetTables:
                FieldRecordRef.GETTABLE(TempDimSetDimensionsFieldMap);
        END;

        // Get the field no when the "Table No." is stored.
        TableNoFieldNumber := TempDimSetDimensionsFieldMap.FIELDNO("Table No.");
        TableNoFieldRef := FieldRecordRef.FIELD(TableNoFieldNumber);
        IF FieldRecordRef.FINDSET THEN BEGIN
            REPEAT
                TableNumber := TableNoFieldRef.VALUE;
                TempRecRef.OPEN(TableNumber);
                CASE TempTableOption OF
                    TempTableOption::DefaultDimTables:
                        ChangeGlobalsWithDefaultDim(TempRecRef);
                    TempTableOption::DimSetTables:
                        ChangeGlobalsWithDimensionSet(TempRecRef);
                END;
                TempRecRef.CLOSE;
            UNTIL FieldRecordRef.NEXT = 0;
        END
    end;

    procedure ChangeGlobalsWithDefaultDim(RecordRefForProcessing: RecordRef);
    var
        Global1FieldNo: Integer;
        Global2FieldNo: Integer;
        NoFieldNo: Integer;
        No: Code[20];
    begin
        GetFieldNumbersFromTempTable(
          TempDefaultDimDimensionsFieldMap, RecordRefForProcessing.NUMBER, Global1FieldNo, Global2FieldNo, NoFieldNo);
        UpdateGeneralInfo(COMPANYNAME, RecordRefForProcessing.CAPTION, RecordRefForProcessing.COUNT);
        IF RecordRefForProcessing.FINDFIRST THEN BEGIN
            REPEAT
                No := RecordRefForProcessing.FIELD(NoFieldNo).VALUE;
                GetDefaultDim(No, RecordRefForProcessing.FIELD(Global1FieldNo), RecordRefForProcessing.FIELD(Global2FieldNo));
                RecordRefForProcessing.MODIFY;
                CheckedTableRecords := CheckedTableRecords + 1;
                UpdateProgressInfo;
            UNTIL RecordRefForProcessing.NEXT = 0;
        END;
    end;

    procedure ChangeGlobalsWithDimensionSet(RecordRefForProcessing: RecordRef);
    var
        Global1FieldNo: Integer;
        Global2FieldNo: Integer;
        DimSetIDFieldNo: Integer;
        DimSetID: Integer;
    begin
        GetFieldNumbersFromTempTable(
          TempDimSetDimensionsFieldMap, RecordRefForProcessing.NUMBER, Global1FieldNo, Global2FieldNo, DimSetIDFieldNo);
        UpdateGeneralInfo(COMPANYNAME, RecordRefForProcessing.CAPTION, RecordRefForProcessing.COUNT);
        IF RecordRefForProcessing.FIND('-') THEN BEGIN
            REPEAT
                DimSetID := RecordRefForProcessing.FIELD(DimSetIDFieldNo).VALUE;
                GetDimSetEntry(DimSetID, RecordRefForProcessing.FIELD(Global1FieldNo), RecordRefForProcessing.FIELD(Global2FieldNo));
                RecordRefForProcessing.MODIFY;
                CheckedTableRecords := CheckedTableRecords + 1;
                UpdateProgressInfo;
            UNTIL RecordRefForProcessing.NEXT = 0;
        END;
    end;

    procedure GetDimSetEntry(DimSetID: Integer; Global1FieldRef: FieldRef; Global2FieldRef: FieldRef);
    begin
        Global1FieldRef.VALUE := '';
        Global2FieldRef.VALUE := '';

        DimSetEntry.SETRANGE("Dimension Set ID", DimSetID);
        IF DimSetEntry.FINDSET THEN
            REPEAT
                IF DimSetEntry."Dimension Code" = NewGlobalDim1Code THEN
                    Global1FieldRef.VALUE := DimSetEntry."Dimension Value Code";
                IF DimSetEntry."Dimension Code" = NewGlobalDim2Code THEN
                    Global2FieldRef.VALUE := DimSetEntry."Dimension Value Code";
            UNTIL DimSetEntry.NEXT = 0;
    end;

    procedure CountRowsAndLockExceptionalCases();
    var
        TempRecRef: RecordRef;
    begin
        TempRecRef.GETTABLE(SalesLineArchive);
        CountRowsAndLock(TempRecRef, DatabaseRecords);
        TempRecRef.GETTABLE(PurchLineArchive);
        CountRowsAndLock(TempRecRef, DatabaseRecords);
        TempRecRef.GETTABLE(CustLedgEntry);
        CountRowsAndLock(TempRecRef, DatabaseRecords);
        TempRecRef.GETTABLE(VendorLedgEntry);
        CountRowsAndLock(TempRecRef, DatabaseRecords);
        TempRecRef.GETTABLE(JobTask);
        CountRowsAndLock(TempRecRef, DatabaseRecords);
    end;

    procedure UpdateExceptionalCases();
    var
        TempRecRef: RecordRef;
    begin
        UpdateGeneralInfo(COMPANYNAME, SalesLineArchive.TABLECAPTION, SalesLineArchive.COUNT);
        SalesLineArchive.SETCURRENTKEY("Document Type", "Document No.", "Line No.", "Doc. No. Occurrence", "Version No.");
        IF SalesLineArchive.FIND('-') THEN BEGIN
            REPEAT
                TempRecRef.GETTABLE(SalesLineArchive);
                GetDimSetEntry(
                  SalesLineArchive."Dimension Set ID",
                  TempRecRef.FIELD(SalesLineArchive.FIELDNO("Shortcut Dimension 1 Code")), TempRecRef.FIELD(SalesLineArchive.FIELDNO("Shortcut Dimension 2 Code")));
                SalesLineArchive.MODIFY;
                CheckedTableRecords := CheckedTableRecords + 1;
                UpdateProgressInfo;
            UNTIL SalesLineArchive.NEXT = 0;
        END;

        UpdateGeneralInfo(COMPANYNAME, PurchLineArchive.TABLECAPTION, PurchLineArchive.COUNT);
        PurchLineArchive.SETCURRENTKEY("Document Type", "Document No.", "Line No.", "Doc. No. Occurrence", "Version No.");
        IF PurchLineArchive.FIND('-') THEN BEGIN
            REPEAT
                TempRecRef.GETTABLE(PurchLineArchive);
                GetDimSetEntry(
                  PurchLineArchive."Dimension Set ID",
                  TempRecRef.FIELD(PurchLineArchive.FIELDNO("Shortcut Dimension 1 Code")), TempRecRef.FIELD(PurchLineArchive.FIELDNO("Shortcut Dimension 2 Code")));
                PurchLineArchive.MODIFY;
                CheckedTableRecords := CheckedTableRecords + 1;
                UpdateProgressInfo;
            UNTIL PurchLineArchive.NEXT = 0;
        END;

        UpdateGeneralInfo(COMPANYNAME, CustLedgEntry.TABLECAPTION, CustLedgEntry.COUNT);
        DtldCustLedgEntry.SETCURRENTKEY("Cust. Ledger Entry No.");
        IF CustLedgEntry.FIND('-') THEN BEGIN
            REPEAT
                TempRecRef.GETTABLE(CustLedgEntry);
                GetDimSetEntry(
                  CustLedgEntry."Dimension Set ID",
                  TempRecRef.FIELD(CustLedgEntry.FIELDNO("Global Dimension 1 Code")), TempRecRef.FIELD(CustLedgEntry.FIELDNO("Global Dimension 2 Code")));
                CustLedgEntry.MODIFY;
                DtldCustLedgEntry.SETRANGE("Cust. Ledger Entry No.", CustLedgEntry."Entry No.");
                IF DtldCustLedgEntry.FIND('-') THEN
                    REPEAT
                        DtldCustLedgEntry."Initial Entry Global Dim. 1" := CustLedgEntry."Global Dimension 1 Code";
                        DtldCustLedgEntry."Initial Entry Global Dim. 2" := CustLedgEntry."Global Dimension 2 Code";
                        DtldCustLedgEntry.MODIFY;
                    UNTIL DtldCustLedgEntry.NEXT = 0;
                CheckedTableRecords := CheckedTableRecords + 1;
                UpdateProgressInfo;
            UNTIL CustLedgEntry.NEXT = 0;
        END;

        UpdateGeneralInfo(COMPANYNAME, VendorLedgEntry.TABLECAPTION, VendorLedgEntry.COUNT);
        DtldVendLedgEntry.SETCURRENTKEY("Vendor Ledger Entry No.");
        IF VendorLedgEntry.FIND('-') THEN BEGIN
            REPEAT
                TempRecRef.GETTABLE(VendorLedgEntry);
                GetDimSetEntry(
                  VendorLedgEntry."Dimension Set ID",
                  TempRecRef.FIELD(VendorLedgEntry.FIELDNO("Global Dimension 1 Code")), TempRecRef.FIELD(VendorLedgEntry.FIELDNO("Global Dimension 2 Code")));
                VendorLedgEntry.MODIFY;
                DtldVendLedgEntry.SETRANGE("Vendor Ledger Entry No.", VendorLedgEntry."Entry No.");
                IF VendorLedgEntry.FIND('-') THEN
                    REPEAT
                        DtldVendLedgEntry."Initial Entry Global Dim. 1" := VendorLedgEntry."Global Dimension 1 Code";
                        DtldVendLedgEntry."Initial Entry Global Dim. 2" := VendorLedgEntry."Global Dimension 2 Code";
                        DtldVendLedgEntry.MODIFY;
                    UNTIL DtldVendLedgEntry.NEXT = 0;
                CheckedTableRecords := CheckedTableRecords + 1;
                UpdateProgressInfo;
            UNTIL VendorLedgEntry.NEXT = 0;
        END;

        UpdateGeneralInfo(COMPANYNAME, JobTask.TABLECAPTION, JobTask.COUNT);
        IF JobTask.FINDSET THEN BEGIN
            REPEAT
                GetDefaultJobTaskDim(
                  JobTask."Job No.",
                  JobTask."Job Task No.",
                  JobTask."Global Dimension 1 Code",
                  JobTask."Global Dimension 2 Code");
                JobTask.MODIFY;
                CheckedTableRecords := CheckedTableRecords + 1;
                UpdateProgressInfo;
            UNTIL JobTask.NEXT = 0;
        END;
    end;

    procedure CountRowsAndLock(RecRef: RecordRef; var NumberOfRecords: Integer);
    begin
        RecRef.LOCKTABLE;
        IF RecRef.FINDLAST THEN;
        NumberOfRecords := NumberOfRecords + RecRef.COUNT;
    end;

    procedure CountRowsAndLockTable(var TempDimensionsFieldMap: Record "Dimensions Field Map" temporary);
    var
        TempRecRef: RecordRef;
    begin
        TempDimensionsFieldMap.FINDSET;
        REPEAT
            TempRecRef.OPEN(TempDimensionsFieldMap."Table No.");
            CountRowsAndLock(TempRecRef, DatabaseRecords);
            TempRecRef.CLOSE;
        UNTIL TempDimensionsFieldMap.NEXT = 0;
    end;

    procedure AddToTempTable(var TempDimensionsFieldMap: Record "Dimensions Field Map" temporary; TableNo: Integer; Global1FieldNo: Integer; Global2FieldNo: Integer; IDFieldNo: Integer);
    begin
        // populate the table with rows of the field numbers that we will use.
        TempDimensionsFieldMap."Table No." := TableNo;
        TempDimensionsFieldMap."Global Dim.1 Field No." := Global1FieldNo;
        TempDimensionsFieldMap."Global Dim.2 Field No." := Global2FieldNo;
        TempDimensionsFieldMap."ID Field No." := IDFieldNo;
        TempDimensionsFieldMap.INSERT;
    end;

    procedure GetFieldNumbersFromTempTable(var TempDimensionsFieldMap: Record "Dimensions Field Map" temporary; TableNo: Integer; var Global1FieldNo: Integer; var Global2FieldNo: Integer; var IDFieldNo: Integer);
    begin
        TempDimensionsFieldMap.GET(TableNo);
        Global1FieldNo := TempDimensionsFieldMap."Global Dim.1 Field No.";
        Global2FieldNo := TempDimensionsFieldMap."Global Dim.2 Field No.";
        IDFieldNo := TempDimensionsFieldMap."ID Field No.";
    end;

    procedure InitializeTablesForModification();
    begin
        TempDefaultDimDimensionsFieldMap.DELETEALL;
        TempDimSetDimensionsFieldMap.DELETEALL;

        AddingDefaultValueDim;

        // Initialize the tables using the Dimension Set
        AddToDimSetTempTable(
          DATABASE::"G/L Entry", GLEntry.FIELDNO("Global Dimension 1 Code"), GLEntry.FIELDNO("Global Dimension 2 Code"),
          GLEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Cust. Ledger Entry", CustLedgEntry.FIELDNO("Global Dimension 1 Code"),
          CustLedgEntry.FIELDNO("Global Dimension 2 Code"), CustLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Vendor Ledger Entry", VendorLedgEntry.FIELDNO("Global Dimension 1 Code"),
          VendorLedgEntry.FIELDNO("Global Dimension 2 Code"), VendorLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Item Ledger Entry", ItemLedgEntry.FIELDNO("Global Dimension 1 Code"),
          ItemLedgEntry.FIELDNO("Global Dimension 2 Code"), ItemLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Job Ledger Entry", JobLedgEntry.FIELDNO("Global Dimension 1 Code"), JobLedgEntry.FIELDNO("Global Dimension 2 Code"),
          JobLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Res. Ledger Entry", ResLedgEntry.FIELDNO("Global Dimension 1 Code"),
          ResLedgEntry.FIELDNO("Global Dimension 2 Code"), ResLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Value Entry", ValueEntry.FIELDNO("Global Dimension 1 Code"), ValueEntry.FIELDNO("Global Dimension 2 Code"),
          ValueEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Capacity Ledger Entry", CapLedgEntry.FIELDNO("Global Dimension 1 Code"),
          CapLedgEntry.FIELDNO("Global Dimension 2 Code"), CapLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Bank Account Ledger Entry", BankAccLedgEntry.FIELDNO("Global Dimension 1 Code"),
          BankAccLedgEntry.FIELDNO("Global Dimension 2 Code"), BankAccLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Phys. Inventory Ledger Entry", PhysInvtLedgEntry.FIELDNO("Global Dimension 1 Code"),
          PhysInvtLedgEntry.FIELDNO("Global Dimension 2 Code"), PhysInvtLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"FA Ledger Entry", FALedgEntry.FIELDNO("Global Dimension 1 Code"), FALedgEntry.FIELDNO("Global Dimension 2 Code"),
          FALedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Maintenance Ledger Entry", MaintenanceLedgEntry.FIELDNO("Global Dimension 1 Code"),
          MaintenanceLedgEntry.FIELDNO("Global Dimension 2 Code"), MaintenanceLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Ins. Coverage Ledger Entry", InsCovLedgEntry.FIELDNO("Global Dimension 1 Code"),
          InsCovLedgEntry.FIELDNO("Global Dimension 2 Code"), InsCovLedgEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Ledger Entry", ServiceLedgerEntry.FIELDNO("Global Dimension 1 Code"),
          ServiceLedgerEntry.FIELDNO("Global Dimension 2 Code"), ServiceLedgerEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Warranty Ledger Entry", WarrantyLedgerEntry.FIELDNO("Global Dimension 1 Code"),
          WarrantyLedgerEntry.FIELDNO("Global Dimension 2 Code"), WarrantyLedgerEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Gen. Journal Line", GenJnlLine.FIELDNO("Shortcut Dimension 1 Code"),
          GenJnlLine.FIELDNO("Shortcut Dimension 2 Code"), GenJnlLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Item Journal Line", ItemJnlLine.FIELDNO("Shortcut Dimension 1 Code"),
          ItemJnlLine.FIELDNO("Shortcut Dimension 2 Code"), ItemJnlLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Res. Journal Line", ResJnlLine.FIELDNO("Shortcut Dimension 1 Code"),
          ResJnlLine.FIELDNO("Shortcut Dimension 2 Code"), ResJnlLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Job Journal Line", JobJnlLine.FIELDNO("Shortcut Dimension 1 Code"), JobJnlLine.FIELDNO("Shortcut Dimension 2 Code"),
          JobJnlLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Gen. Jnl. Allocation", GenJnlAlloc.FIELDNO("Shortcut Dimension 1 Code"),
          GenJnlAlloc.FIELDNO("Shortcut Dimension 2 Code"), GenJnlAlloc.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Requisition Line", ReqLine.FIELDNO("Shortcut Dimension 1 Code"), ReqLine.FIELDNO("Shortcut Dimension 2 Code"),
          ReqLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"FA Journal Line", FAJnlLine.FIELDNO("Shortcut Dimension 1 Code"), FAJnlLine.FIELDNO("Shortcut Dimension 2 Code"),
          FAJnlLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Insurance Journal Line", InsuranceJnlLine.FIELDNO("Shortcut Dimension 1 Code"),
          InsuranceJnlLine.FIELDNO("Shortcut Dimension 2 Code"), InsuranceJnlLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Planning Component", PlanningComponent.FIELDNO("Shortcut Dimension 1 Code"),
          PlanningComponent.FIELDNO("Shortcut Dimension 2 Code"), PlanningComponent.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Standard General Journal Line", StdGenJnlLine.FIELDNO("Shortcut Dimension 1 Code"),
          StdGenJnlLine.FIELDNO("Shortcut Dimension 2 Code"), StdGenJnlLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Standard Item Journal Line", StdItemJnlLine.FIELDNO("Shortcut Dimension 1 Code"),
          StdItemJnlLine.FIELDNO("Shortcut Dimension 2 Code"), StdItemJnlLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Sales Header", SalesHeader.FIELDNO("Shortcut Dimension 1 Code"), SalesHeader.FIELDNO("Shortcut Dimension 2 Code"),
          SalesHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Sales Line", SalesLine.FIELDNO("Shortcut Dimension 1 Code"), SalesLine.FIELDNO("Shortcut Dimension 2 Code"),
          SalesLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Purchase Header", PurchHeader.FIELDNO("Shortcut Dimension 1 Code"),
          PurchHeader.FIELDNO("Shortcut Dimension 2 Code"), PurchHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Purchase Line", PurchLine.FIELDNO("Shortcut Dimension 1 Code"), PurchLine.FIELDNO("Shortcut Dimension 2 Code"),
          PurchLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Standard Sales Line", StdSalesLine.FIELDNO("Shortcut Dimension 1 Code"),
          StdSalesLine.FIELDNO("Shortcut Dimension 2 Code"), StdSalesLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Standard Purchase Line", StdPurchLine.FIELDNO("Shortcut Dimension 1 Code"),
          StdPurchLine.FIELDNO("Shortcut Dimension 2 Code"), StdPurchLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Reminder Header", ReminderHeader.FIELDNO("Shortcut Dimension 1 Code"),
          ReminderHeader.FIELDNO("Shortcut Dimension 2 Code"), ReminderHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Finance Charge Memo Header", FinChrgMemoHeader.FIELDNO("Shortcut Dimension 1 Code"),
          FinChrgMemoHeader.FIELDNO("Shortcut Dimension 2 Code"), FinChrgMemoHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Header", ServHeader.FIELDNO("Shortcut Dimension 1 Code"), ServHeader.FIELDNO("Shortcut Dimension 2 Code"),
          ServHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Item Line", ServItemLine.FIELDNO("Shortcut Dimension 1 Code"),
          ServItemLine.FIELDNO("Shortcut Dimension 2 Code"), ServItemLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Line", ServLine.FIELDNO("Shortcut Dimension 1 Code"), ServLine.FIELDNO("Shortcut Dimension 2 Code"),
          ServLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Sales Header Archive", SalesHeaderArchive.FIELDNO("Shortcut Dimension 1 Code"),
          SalesHeaderArchive.FIELDNO("Shortcut Dimension 2 Code"), SalesHeaderArchive.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Purchase Header Archive", PurchHeaderArchive.FIELDNO("Shortcut Dimension 1 Code"),
          PurchHeaderArchive.FIELDNO("Shortcut Dimension 2 Code"), PurchHeaderArchive.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Transfer Header", TransferHeader.FIELDNO("Shortcut Dimension 1 Code"),
          TransferHeader.FIELDNO("Shortcut Dimension 2 Code"), TransferHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Transfer Line", TransferLine.FIELDNO("Shortcut Dimension 1 Code"),
          TransferLine.FIELDNO("Shortcut Dimension 2 Code"), TransferLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Standard Service Line", StdServLine.FIELDNO("Shortcut Dimension 1 Code"),
          StdServLine.FIELDNO("Shortcut Dimension 2 Code"), StdServLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Production Order", ProdOrder.FIELDNO("Shortcut Dimension 1 Code"), ProdOrder.FIELDNO("Shortcut Dimension 2 Code"),
          ProdOrder.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Prod. Order Line", ProdOrderLine.FIELDNO("Shortcut Dimension 1 Code"),
          ProdOrderLine.FIELDNO("Shortcut Dimension 2 Code"), ProdOrderLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Prod. Order Component", ProdOrderComp.FIELDNO("Shortcut Dimension 1 Code"),
          ProdOrderComp.FIELDNO("Shortcut Dimension 2 Code"), ProdOrderComp.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Sales Shipment Header", SalesShptHeader.FIELDNO("Shortcut Dimension 1 Code"),
          SalesShptHeader.FIELDNO("Shortcut Dimension 2 Code"), SalesShptHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Sales Shipment Line", SaleShptLine.FIELDNO("Shortcut Dimension 1 Code"),
          SaleShptLine.FIELDNO("Shortcut Dimension 2 Code"), SaleShptLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Invoice Header", SalesInvHeader.FIELDNO("Shortcut Dimension 1 Code"),
          SalesInvHeader.FIELDNO("Shortcut Dimension 2 Code"), SalesInvHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Invoice Line", SalesInvLine.FIELDNO("Shortcut Dimension 1 Code"),
          SalesInvLine.FIELDNO("Shortcut Dimension 2 Code"), SalesInvLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Return Receipt Header", ReturnRcptHeader.FIELDNO("Shortcut Dimension 1 Code"),
          ReturnRcptHeader.FIELDNO("Shortcut Dimension 2 Code"), ReturnRcptHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Return Receipt Line", ReturnRcptLine.FIELDNO("Shortcut Dimension 1 Code"),
          ReturnRcptLine.FIELDNO("Shortcut Dimension 2 Code"), ReturnRcptLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Cr.Memo Header", SalesCrMemoHeader.FIELDNO("Shortcut Dimension 1 Code"),
          SalesCrMemoHeader.FIELDNO("Shortcut Dimension 2 Code"), SalesCrMemoHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Cr.Memo Line", SalesCrMemoLine.FIELDNO("Shortcut Dimension 1 Code"),
          SalesCrMemoLine.FIELDNO("Shortcut Dimension 2 Code"), SalesCrMemoLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Shipment Header", ServShptHeader.FIELDNO("Shortcut Dimension 1 Code"),
          ServShptHeader.FIELDNO("Shortcut Dimension 2 Code"), ServShptHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Shipment Line", ServShptLine.FIELDNO("Shortcut Dimension 1 Code"),
          ServShptLine.FIELDNO("Shortcut Dimension 2 Code"), ServShptLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Sales Invoice Header", ServInvHeader.FIELDNO("Shortcut Dimension 1 Code"),
          ServInvHeader.FIELDNO("Shortcut Dimension 2 Code"), ServInvHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Sales Invoice Line", ServInvLine.FIELDNO("Shortcut Dimension 1 Code"),
          ServInvLine.FIELDNO("Shortcut Dimension 2 Code"), ServInvLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Sales Cr.Memo Header", ServCrMemoHeader.FIELDNO("Shortcut Dimension 1 Code"),
          ServCrMemoHeader.FIELDNO("Shortcut Dimension 2 Code"), ServCrMemoHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Sales Cr.Memo Line", ServCrMemoLine.FIELDNO("Shortcut Dimension 1 Code"),
          ServCrMemoLine.FIELDNO("Shortcut Dimension 2 Code"), ServCrMemoLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Purch. Rcpt. Header", PurchRcptHeader.FIELDNO("Shortcut Dimension 1 Code"),
          PurchRcptHeader.FIELDNO("Shortcut Dimension 2 Code"), PurchRcptHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Purch. Rcpt. Line", PurchRcptLine.FIELDNO("Shortcut Dimension 1 Code"),
          PurchRcptLine.FIELDNO("Shortcut Dimension 2 Code"), PurchRcptLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Purch. Inv. Header", PurchInvHeader.FIELDNO("Shortcut Dimension 1 Code"),
          PurchInvHeader.FIELDNO("Shortcut Dimension 2 Code"), PurchInvHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Purch. Inv. Line", PurchInvLine.FIELDNO("Shortcut Dimension 1 Code"),
          PurchInvLine.FIELDNO("Shortcut Dimension 2 Code"), PurchInvLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Return Shipment Header", ReturnShptHeader.FIELDNO("Shortcut Dimension 1 Code"),
          ReturnShptHeader.FIELDNO("Shortcut Dimension 2 Code"), ReturnShptHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Return Shipment Line", ReturnShptLine.FIELDNO("Shortcut Dimension 1 Code"),
          ReturnShptLine.FIELDNO("Shortcut Dimension 2 Code"), ReturnShptLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Purch. Cr. Memo Hdr.", PurchCrMemoHeader.FIELDNO("Shortcut Dimension 1 Code"),
          PurchCrMemoHeader.FIELDNO("Shortcut Dimension 2 Code"), PurchCrMemoHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Purch. Cr. Memo Line", PurchCrMemoLine.FIELDNO("Shortcut Dimension 1 Code"),
          PurchCrMemoLine.FIELDNO("Shortcut Dimension 2 Code"), PurchCrMemoLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Issued Reminder Header", IssuedReminderHeader.FIELDNO("Shortcut Dimension 1 Code"),
          IssuedReminderHeader.FIELDNO("Shortcut Dimension 2 Code"), IssuedReminderHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Issued Fin. Charge Memo Header", IssuedFinChrgMemoHeader.FIELDNO("Shortcut Dimension 1 Code"),
          IssuedFinChrgMemoHeader.FIELDNO("Shortcut Dimension 2 Code"), IssuedFinChrgMemoHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Transfer Shipment Header", TransferShipmentHeader.FIELDNO("Shortcut Dimension 1 Code"),
          TransferShipmentHeader.FIELDNO("Shortcut Dimension 2 Code"), TransferShipmentHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Transfer Shipment Line", TransferShipmentLine.FIELDNO("Shortcut Dimension 1 Code"),
          TransferShipmentLine.FIELDNO("Shortcut Dimension 2 Code"), TransferShipmentLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Transfer Receipt Header", TransferReceiptHeader.FIELDNO("Shortcut Dimension 1 Code"),
          TransferReceiptHeader.FIELDNO("Shortcut Dimension 2 Code"), TransferReceiptHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Transfer Receipt Line", TransferReceiptLine.FIELDNO("Shortcut Dimension 1 Code"),
          TransferReceiptLine.FIELDNO("Shortcut Dimension 2 Code"), TransferReceiptLine.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"G/L Budget Entry", GLBudgetEntry.FIELDNO("Global Dimension 1 Code"),
          GLBudgetEntry.FIELDNO("Global Dimension 2 Code"), GLBudgetEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"FA Allocation", FAAlloc.FIELDNO("Global Dimension 1 Code"), FAAlloc.FIELDNO("Global Dimension 2 Code"),
          FAAlloc.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Service Contract Header", ServCtrHeader.FIELDNO("Shortcut Dimension 1 Code"),
          ServCtrHeader.FIELDNO("Shortcut Dimension 2 Code"), ServCtrHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Filed Service Contract Header", FiledServCtrHeader.FIELDNO("Shortcut Dimension 1 Code"),
          FiledServCtrHeader.FIELDNO("Shortcut Dimension 2 Code"), FiledServCtrHeader.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Job WIP Entry", JobWIPEntry.FIELDNO("Global Dimension 1 Code"), JobWIPEntry.FIELDNO("Global Dimension 2 Code"),
          JobWIPEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Job WIP G/L Entry", JobWIPGLEntry.FIELDNO("Global Dimension 1 Code"),
          JobWIPGLEntry.FIELDNO("Global Dimension 2 Code"), JobWIPGLEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Item Budget Entry", ItemBudgetEntry.FIELDNO("Global Dimension 1 Code"),
          ItemBudgetEntry.FIELDNO("Global Dimension 2 Code"), ItemBudgetEntry.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Cartera Doc.", CarteraDoc.FIELDNO("Global Dimension 1 Code"), CarteraDoc.FIELDNO("Global Dimension 2 Code"),
          CarteraDoc.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Posted Cartera Doc.", PostedCarteraDoc.FIELDNO("Global Dimension 1 Code"),
          PostedCarteraDoc.FIELDNO("Global Dimension 2 Code"), PostedCarteraDoc.FIELDNO("Dimension Set ID"));
        AddToDimSetTempTable(
          DATABASE::"Closed Cartera Doc.", ClosedCarteraDoc.FIELDNO("Global Dimension 1 Code"),
          ClosedCarteraDoc.FIELDNO("Global Dimension 2 Code"), ClosedCarteraDoc.FIELDNO("Dimension Set ID"));
    end;

    local procedure AddingDefaultValueDim();
    begin
        AddToDefaultDimTempTable(
          DATABASE::"G/L Account", GLAcc.FIELDNO("Global Dimension 1 Code"), GLAcc.FIELDNO("Global Dimension 2 Code"),
          GLAcc.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::Customer, Cust.FIELDNO("Global Dimension 1 Code"), Cust.FIELDNO("Global Dimension 2 Code"), Cust.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::Vendor, Vend.FIELDNO("Global Dimension 1 Code"), Vend.FIELDNO("Global Dimension 2 Code"), Vend.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::Item, Item.FIELDNO("Global Dimension 1 Code"), Item.FIELDNO("Global Dimension 2 Code"), Item.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::"Resource Group", ResGr.FIELDNO("Global Dimension 1 Code"), ResGr.FIELDNO("Global Dimension 2 Code"),
          ResGr.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::Resource, Res.FIELDNO("Global Dimension 1 Code"), Res.FIELDNO("Global Dimension 2 Code"), Res.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::Job, Job.FIELDNO("Global Dimension 1 Code"), Job.FIELDNO("Global Dimension 2 Code"), Job.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::"Bank Account", BankAcc.FIELDNO("Global Dimension 1 Code"), BankAcc.FIELDNO("Global Dimension 2 Code"),
          BankAcc.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::Employee, Employee.FIELDNO("Global Dimension 1 Code"), Employee.FIELDNO("Global Dimension 2 Code"),
          Employee.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::"Fixed Asset", FA.FIELDNO("Global Dimension 1 Code"), FA.FIELDNO("Global Dimension 2 Code"), FA.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::Insurance, Insurance.FIELDNO("Global Dimension 1 Code"), Insurance.FIELDNO("Global Dimension 2 Code"),
          Insurance.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::"Responsibility Center", RespCenter.FIELDNO("Global Dimension 1 Code"),
          RespCenter.FIELDNO("Global Dimension 2 Code"), RespCenter.FIELDNO(Code));
        AddToDefaultDimTempTable(
          DATABASE::"Salesperson/Purchaser", SalespersonPurchaser.FIELDNO("Global Dimension 1 Code"),
          SalespersonPurchaser.FIELDNO("Global Dimension 2 Code"), SalespersonPurchaser.FIELDNO(Code));
        AddToDefaultDimTempTable(
          DATABASE::Campaign, Campaign.FIELDNO("Global Dimension 1 Code"), Campaign.FIELDNO("Global Dimension 2 Code"),
          Campaign.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::"Item Charge", ItemCharge.FIELDNO("Global Dimension 1 Code"), ItemCharge.FIELDNO("Global Dimension 2 Code"),
          ItemCharge.FIELDNO("No."));
        AddToDefaultDimTempTable(
          DATABASE::"Work Center", WorkCenter.FIELDNO("Global Dimension 1 Code"), WorkCenter.FIELDNO("Global Dimension 2 Code"),
          WorkCenter.FIELDNO("No."));
    end;
}

