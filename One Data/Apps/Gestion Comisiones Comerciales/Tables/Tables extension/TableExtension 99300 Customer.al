tableextension 99300 NewField extends Customer
{
    fields
    {
        // Add changes to table fields here field(99300; "Comissions Zone"; Code[20])
        field(99300; "Commissions Zone Code"; Code[20])
        {
            trigger OnValidate();
            begin

            end;
        }

        field(99301; "Commissions Group Code"; Code[20])
        {
            trigger OnValidate();
            begin

            end;
        }
    }
}