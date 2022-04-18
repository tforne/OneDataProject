report 99301 "Recalculate Commission"
{
    // version OneData016.01.00

    ProcessingOnly = true;

    dataset
    {
        dataitem("Sales Invoice Header"; 112)
        {

            trigger OnAfterGetRecord()
            begin
                CommissionsManagement.RecalculateCommissionSalesInvoice("Sales Invoice Header");
            end;
        }
        dataitem("Sales Cr.Memo Header"; 114)
        {

            trigger OnAfterGetRecord()
            begin
                CommissionsManagement.RecalculateCommissionSalesCrMemo("Sales Cr.Memo Header");
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }
    trigger OnPostReport()
    begin
        MESSAGE('Se han recalculado los documentos seleccionados');
    end;

    var
        CommissionsManagement: Codeunit 99300;
}

