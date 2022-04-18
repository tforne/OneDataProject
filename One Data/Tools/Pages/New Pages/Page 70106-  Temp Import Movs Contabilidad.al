page 70106 "Temp Import Movs Contabilidad"
{
    // version NAVW113.01,NAVES13.01

    ApplicationArea = Basic, Suite;
    Caption = 'Import Movs Contabilidad';
    DataCaptionExpression = '';
    Editable = true;
    PageType = List;
    SourceTable = "Temp Import Movs. Contabilidad";
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
                field("Customer No."; Rec."Account No.")
                {
                }
                field("Posting Date"; Rec."Posting Date")
                {
                }
                field("Document No."; Rec."Document No.")
                {
                }
                field("Description"; Rec.Description)
                {
                }
                Field("Amount"; Rec.Amount)
                {
                }
                field("Cód. Global Dimension 1"; Rec."Global Dimension 1 Code")
                {
                }
                field("Cód. Global Dimension 2"; Rec."Global Dimension 2 Code")
                {
                }
                field("Transaction No."; Rec."Transaction No.")
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
            action("Incorporar movimentos a diario general")
            {

                trigger OnAction()
                begin
                    Report.RunModal(70101, true, true);
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