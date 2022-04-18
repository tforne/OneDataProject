table 70502 "Temp Import Movs. Contabilidad"
{
    fields
    {
        field(1; "Entry No."; Integer)
        {
        }
        field(2; "Account No."; Code[20])
        {
        }
        field(3; "Posting Date"; date)
        {

        }
        field(4; "Document No."; code[20])
        {

        }
        field(5; "Description"; Text[250])
        {
        }
        field(6; "Amount"; Decimal)
        {

        }
        field(7; "Cód. Global Dimension 1"; decimal)
        {

        }
        field(8; "Cód. Global Dimension 2"; Decimal)
        {

        }
        Field(9; "Transaction No."; Integer)
        {

        }
        Field(10; "Message"; Text[250])
        {

        }
        field(11; "Global Dimension 1 Code"; Code[20])
        {

        }
        field(12; "Global Dimension 2 Code"; Code[20])
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
