page 99300 "Commisions Entry"
{
    // version OneData016.01.00

    ApplicationArea = Basic;
    UsageCategory = History;
    Caption = 'Commissions Entry';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    SourceTable = 99300;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Document Line No."; Rec."Document Line No.")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field(Sales; Rec.Sales)
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Sales (LCY)"; Rec."Sales (LCY)")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = all;
                }
                field("Amount (LCY)"; Rec."Amount (LCY)")
                {
                    ApplicationArea = all;
                }
                field("Profit (LCY)"; Rec."Profit (LCY)")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Invoice Discount Amount"; Rec."Invoice Discount Amount")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Payment Discount Amount"; Rec."Payment Discount Amount")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Initial Commission %"; Rec."Initial Commission %")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Forfait %"; Rec."Forfait %")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Base Discount %"; Rec."Base Discount %")
                {
                    ApplicationArea = all;
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Applied Commission %"; Rec."Applied Commission %")
                {
                    ApplicationArea = all;
                }
                field("Amount Commission"; Rec."Amount Commission")
                {
                    ApplicationArea = all;
                }
                field("Amount Commission (LCY)"; Rec."Amount Commission (LCY)")
                {
                    ApplicationArea = all;
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Last User ID Modified"; Rec."Last User ID Modified")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }
}

