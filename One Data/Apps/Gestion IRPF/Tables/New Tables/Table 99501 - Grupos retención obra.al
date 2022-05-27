table 99501 "Grupos retención obra"
{
    // version IRIS5.00.01

    // $$
    // 001 16/07/09 IR-1698/237 dmarin : Creación.
    // $$

    CaptionML = ENU = 'Grupo retención',
                ESP = 'Grupo retención';
    DrillDownPageID = "Grupos retención obra";
    LookupPageID = "Grupos retención obra";

    fields
    {
        field(1; "Código"; Code[20])
        {
            CaptionML = ENU = 'Code',
                        ESP = 'Código';
            NotBlank = true;
        }
        field(2; "Descripción"; Text[30])
        {
            Caption = 'Descripción';
        }
        field(3; "% Retención"; Decimal)
        {
            Caption = 'Porcentaje retención';
        }
        field(4; "Plazo de garantía"; DateFormula)
        {
            Caption = 'Plazo de garantía';
        }
        field(5; "Cuenta de retenciones"; Code[20])
        {
            Caption = 'Cuenta de retenciones';
            TableRelation = "G/L Account";

            trigger OnValidate();
            var
                recCuenta: Record "G/L Account";
            begin
                recCuenta.GET("Cuenta de retenciones");
                recCuenta.TESTFIELD("Account Type", recCuenta."Account Type"::Posting);
            end;
        }
        field(7; "Tipo cálculo retención"; Option)
        {
            OptionMembers = "Importe factura","Importe IVA incluido";
        }
        field(8; "Tratamiento de retención"; Option)
        {
            OptionMembers = "Retención de Pago","Pte. Factura";
        }
        field(9; "Grupo IVA producto retenc."; Code[10])
        {
            TableRelation = "VAT Product Posting Group";
        }
    }

    keys
    {
        key(Key1; "Código")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Código", "Descripción", "% Retención")
        {
        }
    }

    local procedure "#CheckGLAcc"(codPrmAccNo: Code[20]; blnPrmCheckProdPostingGroup: Boolean; blnPrmCheckDirectPosting: Boolean);
    var
        recGLAcc: Record "G/L Account";
    begin
        IF codPrmAccNo <> '' THEN BEGIN
            recGLAcc.GET(codPrmAccNo);
            recGLAcc.CheckGLAcc;
            IF blnPrmCheckProdPostingGroup THEN
                recGLAcc.TESTFIELD("Gen. Prod. Posting Group");
            IF blnPrmCheckDirectPosting THEN
                recGLAcc.TESTFIELD("Direct Posting", TRUE);
        END;
    end;
}

