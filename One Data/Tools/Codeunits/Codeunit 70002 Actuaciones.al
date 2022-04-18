codeunit 70002 Actuacion
{
    Permissions = TableData "G/L Entry" = rmid,
                    Tabledata "Cust. Ledger Entry" = rmid,
                    TableData "Vendor Ledger Entry" = rmid,
                    TableData "Item Ledger Entry" = rmid,
                    TableData "Sales Header" = rmid,
                    TableData "Sales Line" = rmid,
                    TableData "Purchase Header" = rmid,
                    TableData "Purchase Line" = rmid,
                    TableData "Purch. Comment Line" = rmid,
                    TableData "Sales Comment Line" = rmid,
                    TableData "G/L Register" = rmid,
                    TableData "Item Register" = rmid,
                    TableData "Aging Band Buffer" = rmid,
                    TableData "Invt. Posting Buffer" = rmid,
                    TableData "User Time Register" = rmid,
                    TableData "Account Use Buffer" = rmid,
                    TableData "Exch. Rate Adjmt. Reg." = rmid,
                    TableData "Date Compr. Register" = rmid,
                    TableData "Sales Shipment Header" = rmid,
                    TableData "Sales Shipment Line" = rmid,
                    TableData "Sales Invoice Header" = rmid,
                    TableData "Sales Invoice Line" = rmid,
                    TableData "Sales Cr.Memo Header" = rmid,
                    TableData "Sales Cr.Memo Line" = rmid,
                    TableData "Purch. Rcpt. Header" = rmid,
                    TableData "Purch. Rcpt. Line" = rmid,
                    TableData "Purch. Inv. Header" = rmid,
                    TableData "Purch. Inv. Line" = rmid,
                    TableData "Purch. Cr. Memo Hdr." = rmid,
                    TableData "Purch. Cr. Memo Line" = rmid,
                    TableData "Incoming Document" = rmid,
                    TableData "Incoming Document Attachment" = rmid,
                    TableData "Posted Docs. With No Inc. Buf." = rmid,
                    TableData "Unlinked Attachment" = rmid,
                    TableData "Res. Capacity Entry" = rmid,
                    TableData "Job Ledger Entry" = rmid,
                    TableData "Reversal Entry" = rmid,
                    TableData "G/L Account Where-Used" = rmid,
                    TableData "Acc. Sched. KPI Buffer" = rmid,
                    TableData "Res. Ledger Entry" = rmid,
                    TableData "Resource Register" = rmid,
                    TableData "Job Register" = rmid,
                    TableData "G/L Entry - VAT Entry Link" = rmid,
                    TableData "VAT Entry" = rmid,
                    TableData "Bank Account Ledger Entry" = rmid,
                    TableData "Check Ledger Entry" = rmid,
                    TableData "Bank Acc. Reconciliation" = rmid,
                    TableData "Bank Acc. Reconciliation Line" = rmid,
                    TableData "Phys. Inventory Ledger Entry" = rmid,
                    TableData "Reminder Header" = rmid,
                    TableData "Reminder Line" = rmid,
                    TableData "Issued Reminder Header" = rmid,
                    TableData "Issued Reminder Line" = rmid,
                    TableData "Reminder Comment Line" = rmid,
                    TableData "Reminder/Fin. Charge Entry" = rmid,
                    TableData "Finance Charge Memo Header" = rmid,
                    TableData "Finance Charge Memo Line" = rmid,
                    TableData "Issued Fin. Charge Memo Header" = rmid,
                    TableData "Issued Fin. Charge Memo Line" = rmid,
                    TableData "Fin. Charge Comment Line" = rmid,
                    TableData "Payable Vendor Ledger Entry" = rmid,
                    TableData "Reservation Entry" = rmid,
                    TableData "Entry Summary" = rmid,
                    TableData "Item Application Entry" = rmid,
                    TableData "Item Application Entry History" = rmid,
                    TableData "Close Income Statement Buffer" = rmid,
                    TableData "Analysis View Entry" = rmid,
                    TableData "Analysis View Budget Entry" = rmid,
                    TableData "Dimension Code Buffer" = rmid,
                    TableData "Dimension Selection Buffer" = rmid,
                    TableData "Detailed Cust. Ledg. Entry" = rmid,
                    TableData "Detailed Vendor Ledg. Entry" = rmid,
                    TableData "Change Log Entry" = rmid,
                    TableData "Posted Approval Entry" = rmid,
                    TableData "Posted Approval Comment Line" = rmid,
                    TableData "Overdue Approval Entry" = rmid,
                    TableData "Job Queue Entry" = rmid,
                    TableData "Job Queue Log Entry" = rmid,
                    TableData "Activity Log" = rmid,
                    TableData "Cash Flow Forecast Entry" = rmid,
                    TableData "Time Sheet Header Archive" = rmid,
                    TableData "Time Sheet Line Archive" = rmid,
                    TableData "Time Sheet Detail Archive" = rmid,
                    TableData "Time Sheet Cmt. Line Archive" = rmid,
                    TableData "Time Sheet Posting Entry" = rmid,
                    TableData "Job WIP Entry" = rmid,
                    TableData "Job WIP G/L Entry" = rmid,
                    TableData "Job Entry No." = rmid,
                    TableData "Cost Entry" = rmid,
                    TableData "Cost Register" = rmid,
                    TableData "Cost Budget Entry" = rmid,
                    TableData "Credit Transfer Register" = rmid,
                    TableData "Credit Transfer Entry" = rmid,
                    TableData "Applied Payment Entry" = rmid,
                    TableData "Posted Payment Recon. Hdr" = rmid,
                    TableData "Posted Payment Recon. Line" = rmid,
                    TableData "Notification Entry" = rmid,
                    TableData "Attachment" = rmid,
                    TableData "Sales Header Archive" = rmid,
                    TableData "Sales Line Archive" = rmid,
                    TableData "Purchase Header Archive" = rmid,
                    TableData "Purchase Line Archive" = rmid,
                    TableData "Purch. Comment Line Archive" = rmid,
                    TableData "Sales Comment Line Archive" = rmid,
                    TableData "Deferral Header Archive" = rmid,
                    TableData "Deferral Line Archive" = rmid,
                    TableData "Employee Ledger Entry" = rmid,
                    TableData "Detailed Employee Ledger Entry" = rmid,
                    TableData "Payable Employee Ledger Entry" = rmid,
                    TableData "Employee Payment Buffer" = rmid,
                    TableData "FA Ledger Entry" = rmid,
                    TableData "FA Setup" = rmid,
                    TableData "Maintenance Registration" = rmid,
                    TableData "FA Register" = rmid,
                    TableData "Maintenance Ledger Entry" = rmid,
                    TableData "Insurance Register" = rmid,
                    TableData "Registered Whse. Activity Hdr." = rmid,
                    TableData "Registered Whse. Activity Line" = rmid,
                    TableData "Value Entry" = rmid,
                    TableData "Post Value Entry to G/L" = rmid,
                    TableData "G/L - Item Ledger Relation" = rmid,
                    TableData "Availability Calc. Overview" = rmid,
                    TableData "Capacity Ledger Entry" = rmid,
                    TableData "Item Entry Relation" = rmid,
                    TableData "Value Entry Relation" = rmid,
                    TableData "Whse. Item Entry Relation" = rmid,
                    TableData "Cartera Doc." = rmid,
                    TableData "Posted Cartera Doc." = rmid,
                    TableData "Closed Cartera Doc." = rmid,
                    TableData "Bill Group" = rmid,
                    TableData "Posted Bill Group" = rmid,
                    TableData "Closed Bill Group" = rmid,
                    TableData "Payment Order" = rmid,
                    TableData "Posted Payment Order" = rmid,
                    TableData "Closed Payment Order" = rmid;


    var
        GLEntry: Record "G/L Entry";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        VendorLedgerEntry: Record "Vendor Ledger Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        PurchaseHeader: Record "Purchase Header";
        PurchaseLine: Record "Purchase Line";
        PurchCommentLine: Record "Purch. Comment Line";
        SalesCommentLine: Record "Sales Comment Line";
        GLRegister: Record "G/L Register";
        ItemRegister: Record "Item Register";
        AgingBandBuffer: Record "Aging Band Buffer";
        InvtPostingBuffer: Record "Invt. Posting Buffer";
        UserTimeRegister: Record "User Time Register";
        AccountUseBuffer: Record "Account Use Buffer";
        ExchRateAdjmtReg: Record "Exch. Rate Adjmt. Reg.";
        DateComprRegister: Record "Date Compr. Register";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine: Record "Sales Invoice Line";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        SalesCrMemoLine: Record "Sales Cr.Memo Line";
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        PurchRcptLine: Record "Purch. Rcpt. Line";
        PurchInvHeader: Record "Purch. Inv. Header";
        PurchInvLine: Record "Purch. Inv. Line";
        PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.";
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        IncomingDocument: Record "Incoming Document";
        IncomingDocumentAttachment: Record "Incoming Document Attachment";
        PostedDocsWithNoIncBuf: Record "Posted Docs. With No Inc. Buf.";
        UnlinkedAttachment: Record "Unlinked Attachment";
        ResCapacityEntry: Record "Res. Capacity Entry";
        JobLedgerEntry: Record "Job Ledger Entry";
        ReversalEntry: Record "Reversal Entry";
        ResLedgerEntry: Record "Res. Ledger Entry";
        ResourceRegister: Record "Resource Register";
        JobRegister: Record "Job Register";
        GLEntryVATEntryLink: Record "G/L Entry - VAT Entry Link";
        VATEntry: Record "VAT Entry";
        BankAccountLedgerEntry: Record "Bank Account Ledger Entry";
        CheckLedgerEntry: Record "Check Ledger Entry";
        BankAccReconciliation: Record "Bank Acc. Reconciliation";
        BankAccReconciliationLine: Record "Bank Acc. Reconciliation Line";
        PhysInventoryLedgerEntry: Record "Phys. Inventory Ledger Entry";
        ReminderHeader: Record "Reminder Header";
        ReminderLine: Record "Reminder Line";
        IssuedReminderHeader: Record "Issued Reminder Header";
        IssuedReminderLine: Record "Issued Reminder Line";
        ReminderCommentLine: Record "Reminder Comment Line";
        ReminderFinChargeEntry: Record "Reminder/Fin. Charge Entry";
        FinanceChargeMemoHeader: Record "Finance Charge Memo Header";
        FinanceChargeMemoLine: Record "Finance Charge Memo Line";
        IssuedFinChargeMemoHeader: Record "Issued Fin. Charge Memo Header";
        IssuedFinChargeMemoLine: Record "Issued Fin. Charge Memo Line";
        FinChargeCommentLine: Record "Fin. Charge Comment Line";
        PayableVendorLedgerEntry: Record "Payable Vendor Ledger Entry";
        ReservationEntry: Record "Reservation Entry";
        EntrySummary: Record "Entry Summary";
        ItemApplicationEntry: Record "Item Application Entry";
        ItemApplicationEntryHistory: Record "Item Application Entry History";
        CloseIncomeStatementBuffer: Record "Close Income Statement Buffer";
        AnalysisViewEntry: Record "Analysis View Entry";
        AnalysisViewBudgetEntry: Record "Analysis View Budget Entry";
        DimensionCodeBuffer: Record "Dimension Code Buffer";
        DimensionSelectionBuffer: Record "Dimension Selection Buffer";
        DetailedCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
        DetailedVendorLedgEntry: Record "Detailed Vendor Ledg. Entry";
        ChangeLogEntry: Record "Change Log Entry";
        PostedApprovalEntry: Record "Posted Approval Entry";
        PostedApprovalCommentLine: Record "Posted Approval Comment Line";
        OverdueApprovalEntry: Record "Overdue Approval Entry";
        JobQueueEntry: Record "Job Queue Entry";
        JobQueueLogEntry: Record "Job Queue Log Entry";
        ActivityLog: Record "Activity Log";
        CashFlowForecastEntry: Record "Cash Flow Forecast Entry";
        TimeSheetHeaderArchive: Record "Time Sheet Header Archive";
        TimeSheetLineArchive: Record "Time Sheet Line Archive";
        TimeSheetDetailArchive: Record "Time Sheet Detail Archive";
        TimeSheetCmtLineArchive: Record "Time Sheet Cmt. Line Archive";
        TimeSheetPostingEntry: Record "Time Sheet Posting Entry";
        JobWIPEntry: Record "Job WIP Entry";
        JobWIPGLEntry: Record "Job WIP G/L Entry";
        JobEntryNo: Record "Job Entry No.";
        CostEntry: Record "Cost Entry";
        CostRegister: Record "Cost Register";
        CostBudgetEntry: Record "Cost Budget Entry";
        CreditTransferRegister: Record "Credit Transfer Register";
        CreditTransferEntry: Record "Credit Transfer Entry";
        AppliedPaymentEntry: Record "Applied Payment Entry";
        PostedPaymentReconHdr: Record "Posted Payment Recon. Hdr";
        PostedPaymentReconLine: Record "Posted Payment Recon. Line";
        NotificationEntry: Record "Notification Entry";
        Attachment: Record "Attachment";
        SalesHeaderArchive: Record "Sales Header Archive";
        SalesLineArchive: Record "Sales Line Archive";
        PurchaseHeaderArchive: Record "Purchase Header Archive";
        PurchaseLineArchive: Record "Purchase Line Archive";
        PurchCommentLineArchive: Record "Purch. Comment Line Archive";
        SalesCommentLineArchive: Record "Sales Comment Line Archive";
        DeferralHeaderArchive: Record "Deferral Header Archive";
        DeferralLineArchive: Record "Deferral Line Archive";
        EmployeeLedgerEntry: Record "Employee Ledger Entry";
        DetailedEmployeeLedgerEntry: Record "Detailed Employee Ledger Entry";
        PayableEmployeeLedgerEntry: Record "Payable Employee Ledger Entry";
        EmployeePaymentBuffer: Record "Employee Payment Buffer";
        FALedgerEntry: Record "FA Ledger Entry";
        MaintenanceRegistration: Record "Maintenance Registration";
        FARegister: Record "FA Register";
        MaintenanceLedgerEntry: Record "Maintenance Ledger Entry";
        InsuranceRegister: Record "Insurance Register";
        RegisteredWhseActivityHdr: Record "Registered Whse. Activity Hdr.";
        RegisteredWhseActivityLine: Record "Registered Whse. Activity Line";
        ValueEntry: Record "Value Entry";
        PostValueEntryToGL: Record "Post Value Entry to G/L";
        GLItemLedgerRelation: Record "G/L - Item Ledger Relation";
        AvailabilityCalcOverview: Record "Availability Calc. Overview";
        CapacityLedgerEntry: Record "Capacity Ledger Entry";
        ItemEntryRelation: Record "Item Entry Relation";
        ValueEntryRelation: Record "Value Entry Relation";
        WhseItemEntryRelation: Record "Whse. Item Entry Relation";
        CarteraDoc: Record "Cartera Doc.";
        PostedCarteraDoc: Record "Posted Cartera Doc.";
        ClosedCarteraDoc: Record "Closed Cartera Doc.";
        BillGroup: Record "Bill Group";
        PostedBillGroup: Record "Posted Bill Group";
        ClosedBillGroup: Record "Closed Bill Group";
        PaymentOrder: Record "Payment Order";
        PostedPaymentOrder: Record "Posted Payment Order";
        ClosedPaymentOrder: Record "Closed Payment Order";

    trigger OnRun();
    var
        item: record item;
    begin
        if item.get('VAC00068') then begin
            ItemLedgerEntry.reset;
            ItemLedgerEntry.setrange("Item No.", item."No.");
            if ItemLedgerEntry.FindSet() then begin
                item."Item Tracking Code" := 'SSCC';
                item.modify;
                repeat
                    if ItemLedgerEntry."Lot No." = '' then begin
                        ItemLedgerEntry."Lot No." := 'SSCC01';
                        ItemLedgerEntry.modify;
                    end;
                until ItemLedgerEntry.next = 0;
            end;
        end;
        message('Actuacion realizada')
    end;
}