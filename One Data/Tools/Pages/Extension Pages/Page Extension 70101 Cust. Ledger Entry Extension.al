pageextension 70101 CustLedgerEntryExtension extends "Customer Ledger Entries"
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
                    page.runmodal(70107, Rec)
                end;
            }
        }
    }
}