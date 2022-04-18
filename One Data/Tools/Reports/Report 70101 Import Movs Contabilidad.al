report 70101 "Import Movs Contabilidad"
{
    // version MJMeat

    ApplicationArea = Basic, Suite;
    Caption = 'Import Movs Contabilidad';
    ProcessingOnly = true;
    UseRequestPage = false;
    UsageCategory = Tasks;

    dataset
    {
        dataitem("TempMovsContabilidad"; 70502)
        {
            trigger OnAfterGetRecord()
            begin
                Recno += 1;
                Window.UPDATE(1, ROUND(RecNo / TotalRecNo * 10000, 1));
                Clear(GenJournalLine);
                GenJournalLine."Journal Template Name" := journalTemplate;
                GenJournalLine."Journal Batch Name" := BatchName;
                GenJournalLine."Line No." := "TempMovsContabilidad"."Entry No.";
                GenJournalLine.insert;

                GenJournalLine.Validate("Posting Date", "TempMovsContabilidad"."Posting Date");
                GenJournalLine.validate("Account No.", "TempMovsContabilidad"."Account No.");
                GenJournalLine."Document No." := "TempMovsContabilidad"."Document No.";
                GenJournalLine.Validate(Amount, "TempMovsContabilidad".Amount);
                GenJournalLine.Validate("Shortcut Dimension 1 Code", "TempMovsContabilidad"."Global Dimension 1 Code");
                GenJournalLine.Validate("Shortcut Dimension 2 Code", "TempMovsContabilidad"."Global Dimension 2 Code");

                GenJournalLine.modify;
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
                TotalRecNo := "TempMovsContabilidad".COUNT;
                GenJournalLine.reset;
                GenJournalLine.SetRange("Journal Template Name", journalTemplate);
                GenJournalLine.SetRange("Journal Batch Name", BatchName);
                if GenJournalLine.FindFirst() then
                    GenJournalLine.DeleteAll();

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

