tableextension 99500 GenJournalLineExtension extends  "Gen. Journal Line"
{
    fields
    {
        field(99500; "Grupo IRPF"; Code[20])
        {
            trigger OnValidate();
            begin

            end;
        }
        field(99501; "Tipo Cálculo IRPF"; Option)
        {
            Editable = true;
            Caption = 'Tipop Cálculo IRPF';
            DataClassification = ToBeClassified;
            OptionCaption = ' ,Importe,Importe IVA Incl.';
            OptionMembers = " ",Importe,"Importe IVA Incl.";
            trigger OnValidate();
            begin

            end;
        }
        field(99502; "Importe IRPF"; Decimal)
        {
            trigger OnValidate();
            begin

            end;
        }
        field(99503; "Importe IRPF (DL)"; Decimal)
        {
            trigger OnValidate();
            begin

            end;

        }
        field(99504; "Base IRPF"; Decimal)
        {
            trigger OnValidate();
            begin

            end;
        }
        field(99505; "Base IRPF (DL)"; Decimal)
        {
            trigger OnValidate();
            begin

            end;
        }
        field(99506; "Grupo IRPF Contrapartida"; Code[20])
        {
            trigger OnValidate();
            begin

            end;
        }

    }
}