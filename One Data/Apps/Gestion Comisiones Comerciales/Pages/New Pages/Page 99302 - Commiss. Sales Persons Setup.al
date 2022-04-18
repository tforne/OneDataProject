page 99302 "Commiss. Sales Persons Setup"
{
    // version OneData016.01.00

    AutoSplitKey = true;
    Caption = 'Commiss. Sales Persons Setup';
    PageType = List;
    SourceTable = 99302;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Commissions Zone Code"; Rec."Commissions Zone Code")
                {
                    Caption = 'Commissions Zone Code';
                    ApplicationArea = all;
                }
                field("Commissions Group Code"; Rec."Commissions Group Code")
                {
                    Caption = 'Commissions Group Code';
                    ApplicationArea = all;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                    ApplicationArea = all;
                }
                field("Fecha inicial"; Rec."Fecha inicial")
                {
                    Caption = 'Initial Date';
                    ApplicationArea = all;
                }
                field("Initial Commission %"; Rec."Initial Commission %")
                {
                    Caption = 'Initial Commission %';
                    ApplicationArea = all;
                }
                field("Forfait %"; Rec."Forfait %")
                {
                    Caption = 'Forfait %';
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
    }
}

