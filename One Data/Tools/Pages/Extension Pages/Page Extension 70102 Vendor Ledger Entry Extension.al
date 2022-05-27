pageextension 70102 VendorLedgerEntryExtension extends "Vendor Ledger Entries"
{
    actions
    {
        // Adding a new action 
        addlast(Processing)
        {
            action(ChangeGlobalDimension)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Cambiar global dimension';
                trigger OnAction();
                begin
                    page.runmodal(70108, Rec)
                end;
            }
        }
    }
}