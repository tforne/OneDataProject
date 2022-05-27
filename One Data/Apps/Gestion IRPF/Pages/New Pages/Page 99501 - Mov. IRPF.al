page 99501 "Movs. IRPF"
{
    PageType = List;
    SourceTable = "Movs. IRPF";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Nº Mov."; Rec."Nº Mov.")
                {
                }
                field("Fecha Registro"; Rec."Fecha Registro")
                {
                }
                field("Nº Documento"; Rec."Nº Documento")
                {
                }
                field("Tipo Cálculo"; Rec."Tipo Cálculo")
                {
                }
                field(Tipo; Rec.Tipo)
                {
                }
                field("Nº Proveedor/Cliente"; Rec."Nº Proveedor/Cliente")
                {
                }
                field("Grupo IRPF"; Rec."Grupo IRPF")
                {
                }
                field("% Retención"; Rec."% Retención")
                {
                }
                field(Base; Rec.Base)
                {
                }
                field("Importe IRPF"; Rec."Importe IRPF")
                {
                }
                field(Pendiente; Rec.Pendiente)
                {
                }
                field("Fecha Liquidación"; Rec."Fecha Liquidación")
                {
                }
            }
        }
    }

    actions
    {
    }
}

