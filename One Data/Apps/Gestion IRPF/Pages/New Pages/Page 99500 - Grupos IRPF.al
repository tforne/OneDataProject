page 99500 "Grupos IRPF"
{
    PageType = List;
    SourceTable = "Grupos IRPF";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Código; Rec.Código)
                {
                }
                field(Descripción; Rec.Descripción)
                {
                }
                field("Tipo Cálculo"; Rec."Tipo Cálculo")
                {
                }
                field("% Retención"; Rec."% Retención")
                {
                }
                field("Cta. Retención Soportado"; REc."Cta. Retención Soportado")
                {
                }
                field("Cta. Retención Repercutido"; Rec."Cta. Retención Repercutido")
                {
                }
                field("Importe IRPF"; Rec."Importe IRPF")
                {
                }
                field("Base IRPF"; Rec."Base IRPF")
                {
                }
                field("Importe IRPF (DL)"; Rec."Importe IRPF (DL)")
                {
                }
                field("Base IRPF (DL)"; Rec."Base IRPF (DL)")
                {
                }
                field("Tipo IRPF"; Rec."Tipo IRPF")
                {
                }
                field("Ref. Catastral Obligatoria"; Rec."Ref. Catastral Obligatoria")
                {
                }
            }
        }
    }

    actions
    {
    }
}

