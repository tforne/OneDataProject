page 70105 "One Data Reservation Entries"
{
    Caption = 'Reservation Entries';
    DataCaptionExpression = Rec.TextCaption;
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    SourceTable = "Reservation Entry";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = true;
                field("Reservation Status"; Rec."Reservation Status")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies the status of the reservation.';
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies the number of the item that has been reserved in this entry.';
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies the variant of the item on the line.';
                    Visible = true;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies the Location of the items that have been reserved in the entry.';
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies the serial number of the item that is being handled on the document line.';
                    Visible = true;
                }
                field("Lot No."; Rec."Lot No.")
                {
                    ApplicationArea = Basic, Suite;
                    ;
                    Editable = true;
                    ToolTip = 'Specifies the lot number of the item that is being handled with the associated document line.';
                    Visible = true;
                }
                field("Expected Receipt Date"; Rec."Expected Receipt Date")
                {
                    ApplicationArea = Basic, Suite;
                    ;
                    Editable = true;
                    ToolTip = 'Specifies the date on which the reserved items are expected to enter inventory.';
                    Visible = true;
                }
                field("Shipment Date"; Rec."Shipment Date")
                {
                    ApplicationArea = Basic, Suite;
                    ;
                    Editable = true;
                    ToolTip = 'Specifies when items on the document are shipped or were shipped. A shipment date is usually calculated from a requested delivery date plus lead time.';
                    Visible = true;
                }
                field("Quantity (Base)"; Rec."Quantity (Base)")
                {
                    ApplicationArea = Basic, Suite;
                    ;
                    ToolTip = 'Specifies the quantity of the item that has been reserved in the entry.';

                    trigger OnValidate()
                    begin

                    end;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies a description of the reservation entry.';
                    Visible = true;
                }
                field("Source Type"; Rec."Source Type")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies for which source type the reservation entry is related to.';
                    Visible = true;
                }
                field("Source Subtype"; Rec."Source Subtype")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies which source subtype the reservation entry is related to.';
                    Visible = true;
                }
                field("Source ID"; Rec."Source ID")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies which source ID the reservation entry is related to.';
                    Visible = true;
                }
                field("Source Batch Name"; Rec."Source Batch Name")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies the journal batch name if the reservation entry is related to a journal or requisition line.';
                    Visible = true;
                }
                field("Source Ref. No."; Rec."Source Ref. No.")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies a reference number for the line, which the reservation entry is related to.';
                    Visible = true;
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies the number of the entry, as assigned from the specified number series when the entry was created.';
                }
                field("Creation Date"; Rec."Creation Date")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies the date on which the entry was created.';
                    Visible = true;
                }
                field("Transferred from Entry No."; Rec."Transferred from Entry No.")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    ToolTip = 'Specifies a value when the order tracking entry is for the quantity that remains on a document line after a partial posting.';
                }
            }
        }
        area(factboxes)
        {
            systempart(Control1900383207; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(Control1905767507; Notes)
            {
                ApplicationArea = Notes;
                Visible = false;
            }
        }
    }
}