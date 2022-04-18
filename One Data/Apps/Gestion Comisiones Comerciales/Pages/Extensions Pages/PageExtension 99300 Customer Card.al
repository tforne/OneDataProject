pageextension 99300 NewField extends "Customer Card"
{
    layout
    {
        addafter("Address & Contact")
        {
            group(Comissions)
            {
                //Visible = true;
                field("Commissions Group Code"; Rec."Commissions Group Code")
                {
                    ApplicationArea = All;
                    // ShowCaption = true;
                    TableRelation = "Commissions Group";
                }
                field("Commissions Zone Code"; Rec."Commissions Zone Code")
                {
                    ApplicationArea = all;
                    TableRelation = "Commissions Zone";
                }
            }
        }
        // Add changes to page layout here
    }
}
