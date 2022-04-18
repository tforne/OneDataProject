table 99302 "Commiss. Sales Persons Setup"
{
    // version OneData016.01.00

    Caption = 'Commiss. Sales Persons Setup';
    DrillDownPageID = 99302;
    LookupPageID = 99302;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            AutoIncrement = true;
            Caption = 'No. Mov.';
            DataClassification = ToBeClassified;
        }
        field(3;"Commissions Zone Code";Code[20])
        {
            Caption = 'Cód. zona de comisiones';
            DataClassification = ToBeClassified;
            TableRelation = "Commissions Zone";
        }
        field(4;"Commissions Group Code";Code[20])
        {
            Caption = 'Cód. grupo de comisiones';
            DataClassification = ToBeClassified;
            TableRelation = "Commissions Group";
        }
        field(5;"Customer No.";Code[20])
        {
            Caption = 'No. cliente';
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        field(10;"Fecha inicial";Date)
        {
            DataClassification = ToBeClassified;
        }
        field(11;"Initial Commission %";Decimal)
        {
            Caption = '% Comisión inicial';
            DataClassification = ToBeClassified;
        }
        field(12;"Forfait %";Decimal)
        {
            Caption = '% Forfait';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Commissions Zone Code","Commissions Group Code","Customer No.","Fecha inicial")
        {
        }
    }

    fieldgroups
    {
    }
}

