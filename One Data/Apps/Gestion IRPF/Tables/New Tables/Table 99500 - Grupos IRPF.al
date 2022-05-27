table 99500 "Grupos IRPF"
{
    // version IRIS5.00.01

    // $$
    // 001 09/07/09 IR-1698/237 dmarin : Transfer. Creación.
    // $$

    LookupPageID = 99500;

    fields
    {
        field(1; "Código"; Code[20])
        {
        }
        field(2; "Descripción"; Text[50])
        {
        }
        field(3; "Tipo Cálculo"; Option)
        {
            Description = 'op= ,Importe,Importe IVA Incl.';
            OptionMembers = " ",Importe,"Importe IVA Incl.";
        }
        field(4; "% Retención"; Decimal)
        {
            DecimalPlaces = 2 : 2;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5; "Cta. Retención Soportado"; Code[20])
        {
            TableRelation = "G/L Account"."No.";
        }
        field(8;"Cta. Retención Repercutido";Code[20])
        {
            TableRelation = "G/L Account"."No.";
        }
        field(9;"Importe IRPF";Decimal)
        {
            Description = 'Campo para uso temporal';
            Editable = false;
        }
        field(10;"Base IRPF";Decimal)
        {
            Description = 'Campo para uso temporal';
            Editable = false;
        }
        field(11;"Importe IRPF (DL)";Decimal)
        {
            Description = 'Campo para uso temporal';
            Editable = false;
        }
        field(12;"Base IRPF (DL)";Decimal)
        {
            Description = 'Campo para uso temporal';
            Editable = false;
        }
        field(13;"Tipo IRPF";Option)
        {
            Description = 'Tipo IRPF';
            OptionMembers = " ",Alquileres;
        }
        field(14;"Ref. Catastral Obligatoria";Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1;"Código")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;"Código","Descripción")
        {
        }
    }

    procedure "#LimpiaImportesIRPF"();
    begin
        MODIFYALL("Importe IRPF", 0);
        MODIFYALL("Base IRPF", 0);
        MODIFYALL("Importe IRPF (DL)", 0);
        MODIFYALL("Base IRPF (DL)", 0);
    end;
}

