table 99300 "Commission Entry"
{
    // version OneData016.01.00

    Caption = 'Commission Entry';
    DrillDownPageID = 99300;
    LookupPageID = 99300;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(3; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }
        field(5; "Document Type"; Option)
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund,,,,,,,,,,,,,,,Bill';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund,,,,,,,,,,,,,,,Bill;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;

            trigger OnLookup()
            var
                IncomingDocument: Record 130;
            begin
            end;
        }
        field(7; "Document Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(9; "Customer Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Item No."; Code[20])
        {
            Caption = 'No. producto';
            DataClassification = ToBeClassified;
        }
        field(11; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = ToBeClassified;
            TableRelation = Currency;
        }
        field(13; Sales; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Sales';
            Editable = false;
        }
        field(17; "Sales (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales (LCY)';
            Editable = false;
        }
        field(18; Amount; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(19; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(30; "Profit (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Profit (LCY)';
            DataClassification = ToBeClassified;
        }
        field(35; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(40; "Invoice Discount %"; Decimal)
        {
            Caption = 'Invoice Discount %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(41; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(43; "VAT Tolerance %"; Decimal)
        {
            Caption = 'VAT Tolerance %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(50; "Base Discount %"; Decimal)
        {
            Caption = 'Base Discount %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(51; "Initial Commission %"; Decimal)
        {
            Caption = '% comisión inicial';
            DataClassification = ToBeClassified;
        }
        field(52; "Forfait %"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(55; "Total Discount Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Total Discount Amount';
            DataClassification = ToBeClassified;
        }
        field(57; "Calculated Commission %"; Decimal)
        {
            Caption = '% comisión calculada';
            DataClassification = ToBeClassified;
        }
        field(58; "Applied Commission %"; Decimal)
        {
            Caption = 'Applied Commission %';
            DataClassification = ToBeClassified;
        }
        field(60; "Salesperson Code"; Code[20])
        {
            Caption = 'Salesperson Code';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }
        field(80; "Commissions Zone Code"; Code[20])
        {
            Caption = 'Cód. zona de comisiones';
            DataClassification = ToBeClassified;
            TableRelation = "Commissions Zone";
        }
        field(81; "Commissions Group Code"; Code[20])
        {
            Caption = 'Cód. grupo de comisiones';
            DataClassification = ToBeClassified;
            TableRelation = "Commissions Group";
        }
        field(90; "Allow Line Disc."; Boolean)
        {
            Caption = 'Allow Line Disc.';
            DataClassification = ToBeClassified;
            InitValue = true;
        }
        field(100; "Line Discount Amount"; Decimal)
        {
            Caption = 'Line Discount Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(101; "Invoice Discount Amount"; Decimal)
        {
            Caption = 'Invoice Discount Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(102; "Payment Discount Amount"; Decimal)
        {
            Caption = 'Payment Discount Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(200; "Amount Commission"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount Commission';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(201; "Amount Commission (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Commission (LCY)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(300; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup()
            var
                UserMgt: Codeunit 418;
            begin
            end;
        }
        field(310; "Last User ID Modified"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup()
            var
                UserMgt: Codeunit 418;
            begin
            end;
        }
        field(311; "Last Date Modified"; Date)
        {
            Caption = 'Última fecha modificación';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(key2; "Salesperson Code", "Posting Date")
        {

        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        "Last Date Modified" := TODAY;
        "Last User ID Modified" := USERID;
    end;

    trigger OnModify()
    begin
        "Last Date Modified" := TODAY;
        "Last User ID Modified" := USERID;
    end;
}

