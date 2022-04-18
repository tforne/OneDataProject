page 99301 "Commisions Setup"
{
    // version OneData016.01.00

    SourceTable = 99301;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Commissions Setup';

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Calculate Commission"; Rec."Calculate Commission")
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field("Include Payment Discount %"; Rec."Include Payment Discount %")
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field("Include Inv. Discount %"; Rec."Include Inv. Discount %")
                {
                    ApplicationArea = All;
                    Editable = true;
                }

            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Recalculate commissions")
            {
                ApplicationArea = Basic, Suite;
                RunObject = Report 99301;
            }
        }
        area(navigation)
        {
            action("Commiss. Sales Persons Setup")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Commiss. Sales Persons Setup';
                Image = Setup;
                // Promoted = true;
                // PromotedCategory = Category4;
                // PromotedIsBig = true;
                RunObject = Page 99302;
            }
        }
    }
}

