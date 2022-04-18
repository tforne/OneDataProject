table 99303 "Commissions Zone"
{
    // version OneData016.01.00

    DrillDownPageID = 99303;
    LookupPageID = 99303;

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[30])
        {
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

