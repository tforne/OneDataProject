page 70104 "Saldo inicial proveedores"
{
    // version NAVW113.01,NAVES13.01

    ApplicationArea = Basic, Suite;
    Caption = 'Saldo inicial proveedores';
    DataCaptionExpression = '';
    Editable = true;
    PageType = List;
    SourceTable = "Saldo inicial Proveedores";
    SourceTableView = SORTING("Entry No.");

    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                }
                field("Customer No."; Rec."Customer No.")
                {
                }

                field("Description"; Rec.Description)
                {
                }
                Field("Amount"; Rec.Amount)
                {
                }
                field("Debit Amount"; Rec."Debit Amount")
                {
                }
                field("Credit Amount"; Rec."Credit Amount")
                {
                }
                field(Message; Rec.Message)
                {

                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("incorporar saldo a diario general")
            {

                trigger OnAction()
                begin
                    Report.RunModal(70100, true, true);
                end;
            }
        }
    }


    var
        GLAcc: Record "G/L Account";
        DimensionSetIDFilter: Page "Dimension Set ID Filter";
        HasIncomingDocument: Boolean;
        AmountVisible: Boolean;
        DebitCreditVisible: Boolean;

}