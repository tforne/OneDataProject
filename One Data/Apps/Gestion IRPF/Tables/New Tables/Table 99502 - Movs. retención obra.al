table 99502 "Movs. retención obra"
{
    // version IRIS5.00.01

    // $$
    // 001 16/07/09 IR-1698/237 dmarin : Creación.
    // $$

    CaptionML = ENU = 'Mov. retención obra',
                ESP = 'Mov. retención obra';
    DrillDownPageID = "Prov. Movs. retención obra";
    LookupPageID = "Prov. Movs. retención obra";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            CaptionML = ENU = 'Entry No.',
                        ESP = 'Nº mov.';
        }
        field(2; Tipo; Option)
        {
            Caption = 'Tipo';
            OptionCaption = 'Proveedor,Cliente';
            OptionMembers = Proveedor,Cliente;
        }
        field(3; "No."; Code[20])
        {
            CaptionML = ENU = 'No.',
                        ESP = 'No.';
            TableRelation = IF (Tipo = CONST(Proveedor)) Vendor
            ELSE
            IF (Tipo = CONST(Cliente)) Customer;
        }
        field(4; "Posting Date"; Date)
        {
            CaptionML = ENU = 'Posting Date',
                        ESP = 'Fecha registro';
        }
        field(5; "Document No."; Code[20])
        {
            CaptionML = ENU = 'Document No.',
                        ESP = 'Nº documento';
        }
        field(6; Description; Text[50])
        {
            CaptionML = ENU = 'Description',
                        ESP = 'Descripción';
        }
        field(8; "Código retención"; Code[20])
        {
            Caption = 'Código retención';
            TableRelation = "Grupos retención obra".Código;
        }
        field(9; "Currency Code"; Code[10])
        {
            CaptionML = ENU = 'Currency Code',
                        ESP = 'Cód. divisa';
            TableRelation = Currency;
        }
        field(10; Amount; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount',
                        ESP = 'Importe';
            Editable = false;
        }
        field(11; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount (LCY)',
                        ESP = 'Importe (DL)';
            Editable = false;
        }
        field(12; "Global Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,1,1';
            CaptionML = ENU = 'Global Dimension 1 Code',
                        ESP = 'Cód. dimensión global 1';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No."=CONST(1));
        }
        field(13; "Global Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,1,2';
            CaptionML = ENU = 'Global Dimension 2 Code',
                        ESP = 'Cód. dimensión global 2';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No."=CONST(2));
        }
        field(14; "User ID"; Code[20])
        {
            CaptionML = ENU = 'User ID',
                        ESP = 'Id. usuario';
            TableRelation = "User Setup";
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnLookup();
            var
                LoginMgt: Codeunit "User Management";
            begin
                LoginMgt.DisplayUserInformationBySID("User ID");
            end;
        }
        field(15; "Source Code"; Code[10])
        {
            CaptionML = ENU = 'Source Code',
                        ESP = 'Cód. origen';
            TableRelation = "Source Code";
        }
        field(16; "Due Date"; Date)
        {
            CaptionML = ENU = 'Due Date',
                        ESP = 'Fecha vencimiento';
        }
        field(17; "Document Date"; Date)
        {
            CaptionML = ENU = 'Document Date',
                        ESP = 'Fecha emisión documento';
        }
        field(18; "External Document No."; Code[20])
        {
            CaptionML = ENU = 'External Document No.',
                        ESP = 'Nº documento externo';
        }
        field(19; "Base de retención"; Decimal)
        {
        }
        field(20; Pendiente; Boolean)
        {
            Caption = 'Pendiente';
            Editable = false;
        }
        field(21; "Base de retención (DL)"; Decimal)
        {
        }
        field(22; "Tratamiento de retención"; Option)
        {
            OptionMembers = "Retención de Pago","Pte. Factura";
        }
        field(23; "Fecha liberación"; Date)
        {
        }
        field(24; "Liberado por nº documento"; Code[20])
        {
        }
        field(25; "Liq por Id."; Code[20])
        {
        }
        field(26; "Liberado por nº de movimiento"; Integer)
        {
        }
        field(50000; "Cód. forma pago doc. original"; Code[10])
        {
        }
        field(50001; "Nº proyecto"; Code[20])
        {
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(Key2; "No.", "Posting Date", "Currency Code")
        {
        }
        key(Key3; Tipo, "No.", Pendiente)
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key4; "Posting Date")
        {
        }
        key(Key5; Tipo, "No.")
        {
            SumIndexFields = Amount;
        }
        key(Key6; "Código retención", "No.", "Posting Date")
        {
        }
        key(Key7; Pendiente, Tipo, "No.", "Document No.", "Tratamiento de retención", "Posting Date")
        {
        }
        key(Key8; "Document No.", "Posting Date")
        {
        }
        key(Key9; "Due Date")
        {
        }
    }

    fieldgroups
    {
    }

    var
        Text1100000: TextConst ENU = 'Payment Discount (VAT Excl.)', ESP = '% Dto. P.P. (IVA excluído)';
        Text1100001: TextConst ENU = 'Payment Discount (VAT Adjustment)', ESP = '% Dto. P.P. (IVA ajustado)';
        Text000: TextConst ENU = 'must have the same sign as %1', ESP = 'debe tener el mismo signo que %1.';
        Text001: TextConst ENU = 'must not be larger than %1', ESP = 'no debe ser mayor que %1.';

    procedure "#DrillDownOnEntries"(var recPrmDtldVendLedgEntry: Record "Detailed Vendor Ledg. Entry");
    var
        VendLedgEntry: Record "Vendor Ledger Entry";
    begin
        VendLedgEntry.RESET;
        recPrmDtldVendLedgEntry.COPYFILTER("Vendor No.", VendLedgEntry."Vendor No.");
        recPrmDtldVendLedgEntry.COPYFILTER("Currency Code", VendLedgEntry."Currency Code");
        recPrmDtldVendLedgEntry.COPYFILTER("Initial Entry Global Dim. 1", VendLedgEntry."Global Dimension 1 Code");
        recPrmDtldVendLedgEntry.COPYFILTER("Initial Entry Global Dim. 2", VendLedgEntry."Global Dimension 2 Code");
        VendLedgEntry.SETCURRENTKEY("Vendor No.", "Posting Date");
        PAGE.RUN(0, VendLedgEntry);
    end;
}

