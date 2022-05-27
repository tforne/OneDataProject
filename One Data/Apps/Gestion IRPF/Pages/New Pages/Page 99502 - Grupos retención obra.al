page 99502 "Grupos retención obra"
{
    PageType = List;
    SourceTable = "Grupos retención obra";

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
                field("% Retención"; Rec."% Retención")
                {
                }
                field("Plazo de garantía"; Rec."Plazo de garantía")
                {
                }
                field("Cuenta de retenciones"; Rec."Cuenta de retenciones")
                {
                }
                field("Tipo cálculo retención"; Rec."Tipo cálculo retención")
                {
                }
                field("Tratamiento de retención"; Rec."Tratamiento de retención")
                {
                }
                field("Grupo IVA producto retenc."; Rec."Grupo IVA producto retenc.")
                {
                }
            }
        }
    }

    actions
    {
    }
}

