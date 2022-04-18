page 99304 "Commissions Group"
{
    // version OneData016.01.00

    PageType = List;
    SourceTable = 99304;
    // UsageCategory = Lists;
    Caption = 'Commissions Group';

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
                RunPageLink = "Commissions Group Code" = FIELD(Code);
                ToolTip = 'Allows you to view or edit combinations of commission groups and commission areas. Fill in a line for each combination of commission group and commission area.';
            }
        }

    }
}

