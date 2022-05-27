page 99503 "Prov. Movs. retención obra"
{
    PageType = List;
    SourceTable = "Movs. retención obra";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Date"; Rec."Posting Date")
                {
                }
                field("Document No."; Rec."Document No.")
                {
                }
                field("External Document No."; Rec."External Document No.")
                {
                }
                field("No."; Rec."No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                }
                field("Currency Code"; Rec."Currency Code")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Amount (LCY)"; Rec."Amount (LCY)")
                {
                }
                field("Due Date"; Rec."Due Date")
                {
                }
                field(Pendiente; Rec.Pendiente)
                {
                }
                field("User ID"; Rec."User ID")
                {
                }
                field("Source Code"; Rec."Source Code")
                {
                }
                field("Tratamiento de retención"; Rec."Tratamiento de retención")
                {
                }
                field("Fecha liberación"; Rec."Fecha liberación")
                {
                }
                field("Liberado por nº documento"; Rec."Liberado por nº documento")
                {
                }
                field("Liq por Id."; Rec."Liq por Id.")
                {
                }
                field("Liberado por nº de movimiento"; Rec."Liberado por nº de movimiento")
                {
                }
                field("Nº proyecto"; Rec."Nº proyecto")
                {
                }
                field("Entry No."; Rec."Entry No.")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnModifyRecord(): Boolean;
    var
        IRPFManagement : Codeunit "IRPF Management";
    begin 

        IRPFManagement.EditarMovRetenciónObra(Rec);
        EXIT(FALSE);
    end;
}

