codeunit 99400 "Replication Management"
{
    // version OneData016.01.00

    Permissions = TableData Item = rimd;

    trigger OnRun()
    begin
        Item.ChangeCompany(NombreEmpresa);
    end;

    var
        Item: Record Item;
        NombreEmpresa: Text[50];
 
}