table 99503 "Movs. IRPF"
{
    // version IRIS5.00.01

    // $$
    // 001 09/07/09 IR-1698/237 dmarin : Transfer. Creación.
    // 002 20/07/09 IR-1698/237 dmarin : Nueva key: Tipo,Nº Proveedor/Cliente,Pendiente
    // $$

    DrillDownPageID = "Movs. IRPF";
    LookupPageID = "Movs. IRPF";

    fields
    {
        field(1; "Nº Mov."; Integer)
        {
        }
        field(2; "Fecha Registro"; Date)
        {
        }
        field(3; "Nº Documento"; Code[20])
        {
        }
        field(4; "Tipo Cálculo"; Option)
        {
            Description = 'op= ,Importe,Importe IVA Incl.';
            OptionMembers = " ",Importe,"Importe IVA Incl.";
        }
        field(5; Tipo; Option)
        {
            Description = 'op=''compras'',ventas'';';
            OptionMembers = Compras,Ventas;
        }
        field(6; "Nº Proveedor/Cliente"; Code[20])
        {
            TableRelation = IF (Tipo = CONST(Compras)) "Vendor"."No."
                            ELSE IF (Tipo=CONST(Ventas)) Customer."No.";
        }
        field(7;"Grupo IRPF";Code[20])
        {
            TableRelation = "Grupos IRPF".Código;
        }
        field(8;"% Retención";Decimal)
        {
            MaxValue = 100;
            MinValue = 0;
        }
        field(9;Base;Decimal)
        {
        }
        field(10;"Importe IRPF";Decimal)
        {
        }
        field(11;Pendiente;Boolean)
        {
            InitValue = true;
        }
        field(12;"Fecha Liquidación";Date)
        {
        }
        field(13;"Tipo IRPF";Option)
        {
            CalcFormula = Lookup("Grupos IRPF"."Tipo IRPF" WHERE (Código=FIELD("Grupo IRPF")));
            Description = 'Tipo IRPF';
            Editable = false;
            FieldClass = FlowField;
            OptionMembers = " ",Alquileres;
        }
    }

    keys
    {
        key(Key1;"Nº Mov.")
        {
        }
        key(Key2;"Nº Documento","Fecha Registro")
        {
        }
        key(Key3;"Grupo IRPF","Fecha Registro")
        {
        }
        key(Key4;"Grupo IRPF","Nº Proveedor/Cliente")
        {
        }
        key(Key5;Tipo,"Nº Proveedor/Cliente",Pendiente)
        {
            SumIndexFields = "Importe IRPF";
        }
    }

    fieldgroups
    {
    }
}

