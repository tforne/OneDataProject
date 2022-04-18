page 99303 "Commissions Zone"
{
    // version OneData016.01.00

    PageType = List;
    SourceTable = 99303;
    Caption = 'Commissions Zone';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = all;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Setup")
            {
                ApplicationArea = Basic, Suite;
                Caption = '&Setup';
                Image = Setup;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 99302;
                RunPageLink = "Commissions Zone Code" = FIELD(Code);
                ToolTip = 'Allows you to view or edit combinations of commission groups and commission areas. Fill in a line for each combination of commission group and commission area.';
            }
        }

    }
}

