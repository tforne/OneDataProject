page 70100 "Company Table Objects"
{
    // version NAVW113.00

    Caption = 'Company Table Objects';
    Editable = false;
    PageType = List;
    SourceTable = AllObjWithCaption;
    SourceTableView = WHERE("Object Type" = CONST(Table));
    Permissions = TableData "G/L Entry" = rmid,
                    Tabledata "Cust. Ledger Entry" = rmid,
                    TableData "Vendor Ledger Entry" = rmid,
                    TableData "Item Ledger Entry" = rmid,
                    TableData "Sales Header" = rmid,
                    TableData "Sales Line" = rmid,
                    TableData "Purchase Header" = rmid,
                    TableData "Purchase Line" = rmid,
                    TableData "Purch. Comment Line" = rmid,
                    TableData "Sales Comment Line" = rmid,
                    TableData "G/L Register" = rmid,
                    tabledata "Tracking Specification" = rmid;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Object ID"; Rec."Object ID")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'ID';
                    ToolTip = 'Specifies the object ID.';
                }
                field("Object Caption"; Rec."Object Caption")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Name';
                    ToolTip = 'Specifies the name of the table object.';
                }
                field("Object Subtype"; Rec."Object Subtype")
                {
                    ApplicationArea = Basic, Suite;
                }
                field(NumberOfRecords; NumberOfRecords)
                {
                    ApplicationArea = Basic, Suite;
                    trigger OnDrillDown()
                    begin
                        case Rec."Object ID" of
                            17:
                                begin
                                    Page.run(70101, glentry);
                                end;

                            337:
                                begin
                                    clear(PageReservationEntry);

                                    PageReservationEntry.runmodal;
                                end;

                        end;
                    end;
                }
            }
        }
    }


    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        RecRef.OPEN(Rec."Object ID");
        NumberOfRecords := RecRef.COUNT;
        RecRef.CLOSE;
    end;

    trigger OnInit()
    begin
        rec.Setfilter("Object ID", '17|21|25|32|36|37|38|39|43|44|45|46|47|48|49|86|87|110|111|112|113|114|115|120|121|122|123|124|125|130|133|134|137|138|160|169|179|203|240|241|253|254|271|272|273|274|281|295|296|297|298|299|300|302|303|304|305|306|317|336|337|338|339|343|347|365|366|380|405|456|457|458|472|474|710|847|954|955|956|957|958|1004|1005|1015|1104|1105|1109|1205|1206|1294|1295|1296|1511|5062|5107|5108|5109|5110|5125|5126|5127|5128|5222|5223|5224|5225|5601|5603|5616|5617|5625|5636|5772|5773|5802|5811|5823|5830|5832|6507|6508|6509|50121|7000002|7000003|7000004|7000005|7000006|7000007|7000020|7000021|7000022');
    end;

    var
        NumberOfRecords: Integer;
        VariantRecord: Variant;
        RecRef: RecordRef;
        GLEntry: Record "G/L Entry";
        TrackingSpecification: Record "Tracking Specification";
        PageGLEntry: Page "One Data G/L Entry";
        PageReservationEntry: Page "One Data Reservation Entries";
}

