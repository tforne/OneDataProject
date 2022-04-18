table 99301 "Commissions Setup"
{
    // version OneData016.01.00

    Caption = 'Commissions Setup';
    DrillDownPageID = 99301;
    LookupPageID = 99301;

    fields
    {
        field(1; "Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Calculate Commission"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Include Payment Discount %"; Boolean)
        {
            Caption = 'Incluir % descuento P.P.';
            DataClassification = ToBeClassified;
        }
        field(11; "Include Inv. Discount %"; Boolean)
        {
            Caption = 'Incluir % descuento factura';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Code")
        {
        }
    }

    fieldgroups
    {
    }
}

