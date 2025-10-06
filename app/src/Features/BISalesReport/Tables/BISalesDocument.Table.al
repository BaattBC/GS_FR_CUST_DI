table 50201 "GSFR BI Sales Document"
{
    Caption = 'GSFR BI Sales Document';
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; RowNo; Integer)
        {
            Caption = 'Row No.';
        }
        field(3; "Document Type"; Enum "GSFR BI Document Type")
        {
            Caption = 'Document Type';
        }
        field(5; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(7; "External document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(6; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
        }
        field(20; "Type"; Enum "Sales Line Type")
        {
            Caption = 'Type';
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(40; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(50; "Description 2"; Text[100])
        {
            Caption = 'Description 2';
        }
        field(45; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
        }
        field(60; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(70; Amount; Decimal)
        {
            Caption = 'Amount';
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
        }
        field(80; "Line Amount"; Decimal)
        {
            Caption = 'Line Amount';
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
        }

        field(90; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(100; "Variant Code"; Code[20])
        {
            Caption = 'Variant Code';
        }
        field(110; "Long Description"; Text[250])
        {
            Caption = 'Long Description';
        }
        field(120; "Customer GSPOS No."; Text[150])
        {
            Caption = 'Customer GSPOS No.';
        }
        field(140; "Country/Region Code"; code[10])
        {
            Caption = 'County/Region Code';
        }
        field(150; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
        }
        field(160; "Bill-to Name"; Text[100])
        {
            Caption = 'Bill-to Name';
        }
        field(170; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
        }
        field(175; "Salesperson Code"; Code[20])
        {
            Caption = 'Salesperson Code';
        }
        field(180; "Salesperson Name"; Text[100])
        {
            Caption = 'Salesperson Name';
        }
        field(185; "SourceSystemID"; Code[30])
        {
            Caption = 'SourceSytemID';
        }
        field(190; "PS Customer_ID"; Code[20])
        {
            Caption = 'PS Customer_ID';
        }
        field(200; "PS Customer_Name"; Text[100])
        {
            Caption = 'PS Customer_Name';
        }
        field(210; "Net Amount"; Decimal)
        {
            Caption = 'Net Amount';
        }
        field(220; "Product Code"; Code[20])
        { }
        field(300; SDSytemCreatedAt; DateTime)
        {
            Caption = 'DSSytemCreatedAt';
        }


    }
    keys
    {
        key(PK; RowNo)
        {
            Clustered = true;
        }
    }
}
