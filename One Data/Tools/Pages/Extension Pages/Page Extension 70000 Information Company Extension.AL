pageextension 70000 CompanyInformationExtension extends "Company Information"
{
    actions
    {
        // Adding a new action group 'MyNewActionGroup' in the 'Creation' area
        addlast(Processing)
        {
            action(DeleteArxive)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Borrar historial';
                trigger OnAction();
                begin
                    if Confirm(Text0001, false) then
                        deleteArxiveCustLederEntry.Run();

                end;
            }
            action(Actuaciones)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Actuaciones';
                trigger OnAction();
                begin
                    if Confirm(Text0002, false) then
                        actuacion.Run();

                end;
            }
        }
        addlast(navigation)
        {
            action(Arxive)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Documentos registrados';
                trigger OnAction();
                begin
                    page.runmodal(50100);
                end;
            }
            group("Tablas personalizadas")
            {
                action(SetupCustomization)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Configuración personalizaciones';
                    trigger OnAction();
                    begin
                        page.runmodal(50139);
                    end;
                }
                action(EntryLots)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Movimientos de Lotes';
                    trigger OnAction();
                    begin
                        page.runmodal(70003);
                    end;
                }
                action(EntryPalletBoxWeights)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Movimientos de pesos de cajas';
                    trigger OnAction();
                    begin
                        page.runmodal(70000);
                    end;
                }
                action(EntryPalletTasks)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Movimientos de tareas pallets';
                    trigger OnAction();
                    begin
                        page.runmodal(70001);
                    end;
                }
                action(LinePesadas)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Movimientos pesadas';
                    trigger OnAction();
                    begin
                        page.runmodal(50144);
                    end;
                }
            }
            group("Tablas saldos inicialies")
            {
                action(CustomerInitAmount)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Movimientos saldos iniciales clientes';
                    trigger OnAction();
                    begin
                        page.runmodal(50103);
                    end;
                }
                action(VendorInitAmount)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Movimientos saldos iniciales proveedores';
                    trigger OnAction();
                    begin
                        page.runmodal(50104);
                    end;
                }
                action(MovsInitAmount)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Movimientos contable';
                    trigger OnAction();
                    begin
                        page.runmodal(50106);
                    end;
                }
            }

        }
    }
    var
        DeleteArxiveCustLederEntry: Codeunit DeleteArchive;
        Actuacion: Codeunit Actuacion;
        Text0001: Label '¿ Quiere borrar los documentos históricos ?';
        Text0002: Label '¿ Quiere realizar la actuacion ?';

}