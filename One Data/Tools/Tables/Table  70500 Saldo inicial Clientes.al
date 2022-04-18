table 70500 "Saldo inicial Clientes"
{
    fields
    {
        field(1; "Entry No."; Integer)
        {
        }
        field(2; "Customer No."; Code[20])
        {
        }

        field(3; "Description"; Text[250])
        {
        }
        field(4; "Debit Amount"; Decimal)
        {

        }
        field(5; "Credit Amount"; decimal)
        {

        }
        Field(6; "Amount"; decimal)
        {

        }
        Field(7; "Message"; Text[250])
        {

        }
    }
    keys
    {
        key(Key1; "Entry No.")
        {
        }
    }
}
