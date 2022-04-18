report 70100 "Import init amounts customer"
{
    // version MJMeat

    ApplicationArea = Basic, Suite;
    Caption = 'Import init amount customer';
    ProcessingOnly = true;
    UseRequestPage = false;
    UsageCategory = Tasks;

    dataset
    {
        dataitem("Saldo inicial Clientes"; 70500)
        {
            trigger OnAfterGetRecord()
            begin
                Recno += 1;
                Window.UPDATE(1, ROUND(RecNo / TotalRecNo * 10000, 1));
                GenJournalLine.reset;
                GenJournalLine.SetRange("Journal Template Name", journalTemplate);
                GenJournalLine.SetRange("Journal Batch Name", BatchName);
                GenJournalLine.SetRange("Account No.", "Customer No.");
                if GenJournalLine.FindFirst() then begin
                    GenJournalLine.Validate("Posting Date", PostingDateReq);
                    GenJournalLine."Document No." := 'SALDOINI';
                    GenJournalLine.Validate(Amount, "Saldo inicial Clientes".Amount);
                    GenJournalLine.modify;
                end else begin
                    "Saldo inicial Clientes".Message := 'Linea no encontrada';
                    "Saldo inicial Clientes".modify;
                end;
            end;

            trigger OnPostDataItem()
            begin
                IF RecNo > 0 THEN
                    MESSAGE(Text004, RecNo);
                Window.CLOSE;
            end;

            trigger OnPreDataItem()
            begin
                RecNo := 0;
                Window.OPEN(

                  Text009 +
                  '@1@@@@@@@@@@@@@@@@@@@@@@@@@\');
                Window.UPDATE(1, 0);
                TotalRecNo := "Saldo inicial Clientes".COUNT;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(PostingDate; PostingDateReq)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Posting Date';
                        ToolTip = '';
                    }
                    field(JournalTemplate; JournalTemplate)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Libro diario';
                        ToolTip = '';
                        TableRelation = "Gen. Journal Template".name;
                    }
                    field(BatchName; BatchName)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Sección diario';
                        ToolTip = '';
                    }


                }
            }
        }
        actions
        {
        }

        trigger OnOpenPage()
        begin
        end;

        trigger OnQueryClosePage(CloseAction: Action): Boolean
        var
            FileMgt: Codeunit 419;
        begin

        end;
    }

    labels
    {
    }

    trigger OnPostReport()
    begin
    end;

    trigger OnPreReport()
    var
    begin
    end;

    var
        GenJournalLine: record "Gen. Journal Line";
        Text004: Label '%1 table has been successfully updated with %2 entries.';
        Text009: Label 'Insertando datos en diario de compras...\\';

        Window: Dialog;
        DimCode: array[8] of Code[20];
        EntryNo: Integer;
        TotalRecNo: Integer;
        RecNo: Integer;
        NoLinea: Integer;
        Description: Text[50];
        PostingDateReq: Date;
        JournalTemplate: code[10];
        BatchName: code[10];

}

