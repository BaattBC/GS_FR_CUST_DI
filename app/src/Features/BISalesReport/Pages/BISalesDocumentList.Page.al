page 50201 "GSFR BI Sales Document List"
{
    ApplicationArea = All;
    Caption = 'GSFR BI Sales Document List';
    PageType = List;
    SourceTable = "GSFR BI Sales Document";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(RowNo; Rec.RowNo)
                {
                    ToolTip = 'Specifies the value of the Row No. field.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ToolTip = 'Specifies the value of the Document Type field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field("External document No."; Rec."External document No.")
                {

                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ToolTip = 'Specifies the value of the Sell-to Customer No. field.';
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Description 2"; Rec."Description 2")
                {
                    ToolTip = 'Specifies the value of the Description 2 field.';
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                { }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
                field(Amount; Rec.Amount)
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ToolTip = 'Specifies the value of the Line Amount field.';
                }
                field("Net Amount"; Rec."Net Amount")
                { }
                field("Posting Date"; Rec."Posting Date")
                {
                    ToolTip = 'Specifies the value of the Posting Date field.';
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ToolTip = 'Specifies the value of the Variant Code field.';
                }
                field("Long Description"; Rec."Long Description")
                {
                    ToolTip = 'Specifies the value of the Long Description field.';
                }
                field("Customer GSPOS No."; Rec."Customer GSPOS No.")
                {
                    ToolTip = 'Specifies the value of the Customer GSPOS No. field.';
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the County/Region Code field.';
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ToolTip = 'Specifies the value of the Bill-to Customer No. field.';
                }
                field("Bill-to Name"; Rec."Bill-to Name")
                {
                    ToolTip = 'Specifies the value of the Bill-to Name field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ToolTip = 'Specifies the value of the Currency Code field.';
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                { }
                field("Salesperson Name"; Rec."Salesperson Name")
                { }
                field("PS Customer_ID"; Rec."PS Customer_ID")
                { }
                field("PS Customer_Name"; Rec."PS Customer_Name")
                { }
                field(SourceSystemID; Rec.SourceSystemID)
                { }
                field(SDSytemCreatedAt; Rec.SDSytemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        Salesperson: Record "Salesperson/Purchaser";
        SalesInvoice: Query "GSFR BI Sales Invoice";
        SalesCrMemo: Query "GSFR BI Sales Cr. Memo";
        RowCounter: Integer;
    begin
        RowCounter := 0;

        if SalesInvoice.Open() then begin
            while SalesInvoice.Read() do begin
                Rec.Init();
                RowCounter += 1;
                Rec.RowNo := RowCounter;
                Rec."Document Type" := Enum::"GSFR BI Document Type"::Invoice;
                Rec."Document No." := SalesInvoice.Document_No_;
                Rec."External document No." := SalesInvoice.External_Document_No_;
                Rec."Line No." := SalesInvoice.Line_No_;
                Rec."Sell-to Customer No." := SalesInvoice.Sell_to_Customer_No_;
                Rec.Type := SalesInvoice.Type;
                Rec."No." := SalesInvoice.No_;
                Rec.Description := SalesInvoice.Description;
                Rec."Description 2" := SalesInvoice.Description_2;
                Rec."Gen. Prod. Posting Group" := SalesInvoice.Gen__Prod__Posting_Group;
                Rec.Quantity := SalesInvoice.Quantity;
                Rec.Amount := SalesInvoice.Amount;
                Rec."Line Amount" := SalesInvoice.Line_Amount;
                Rec."Posting Date" := SalesInvoice.Posting_Date;
                Rec."Variant Code" := SalesInvoice.Variant_Code;
                Rec."Country/Region Code" := SalesInvoice.Sell_to_Country_Region_Code;
                Rec."Bill-to Customer No." := SalesInvoice.Bill_to_Customer_No_;
                Rec."Bill-to Name" := SalesInvoice.Bill_to_Name;
                Rec."Currency Code" := SalesInvoice.Currency_Code;
                Rec."Salesperson Code" := SalesInvoice.Salesperson_Code;
                Salesperson.Reset();
                Salesperson.SetFilter(Code, SalesInvoice.Salesperson_Code);
                if Salesperson.FindFirst() then
                    Rec."Salesperson Name" := Salesperson.Name;
                Rec."PS Customer_ID" := SalesInvoice.Customer_ID;
                Rec."PS Customer_Name" := SalesInvoice.Customer_Name;
                Rec.SDSytemCreatedAt := SalesInvoice.SystemCreatedAt;
                Rec.Insert();
            end;
            SalesInvoice.Close();
        end;

        if SalesCrMemo.Open() then begin
            while SalesCrMemo.Read() do begin
                Rec.Init();
                RowCounter += 1;
                Rec.RowNo := RowCounter;
                Rec."Document Type" := Enum::"GSFR BI Document Type"::"Credit Memo";
                Rec."Document No." := SalesCrMemo.Document_No_;
                Rec."External document No." := SalesCrMemo.External_Document_No_;
                Rec."Line No." := SalesCrMemo.Line_No_;
                Rec."Sell-to Customer No." := SalesCrMemo.Sell_to_Customer_No_;
                Rec.Type := SalesCrMemo.Type;
                Rec."No." := SalesCrMemo.No_;
                Rec.Description := SalesCrMemo.Description;
                Rec."Description 2" := SalesCrMemo.Description_2;
                Rec."Gen. Prod. Posting Group" := SalesCrMemo.Gen__Prod__Posting_Group;
                Rec.Quantity := -SalesCrMemo.Quantity;
                Rec.Amount := -SalesCrMemo.Amount;
                Rec."Line Amount" := -SalesCrMemo.Line_Amount;
                Rec."Posting Date" := SalesCrMemo.Posting_Date;
                Rec."Variant Code" := SalesCrMemo.Variant_Code;
                Rec."Country/Region Code" := SalesCrMemo.Sell_to_Country_Region_Code;
                Rec."Bill-to Customer No." := SalesCrMemo.Bill_to_Customer_No_;
                Rec."Bill-to Name" := SalesCrMemo.Bill_to_Name;
                Rec."Currency Code" := SalesCrMemo.Currency_Code;
                Rec."Salesperson Code" := SalesCrMemo.Salesperson_Code;
                Salesperson.Reset();
                Salesperson.SetFilter(Code, SalesCrMemo.Salesperson_Code);
                if Salesperson.FindFirst() then
                    Rec."Salesperson Name" := Salesperson.Name;
                Rec."PS Customer_ID" := SalesCrMemo.Customer_ID;
                Rec."PS Customer_Name" := SalesCrMemo.Customer_Name;
                Rec.SDSytemCreatedAt := SalesCrMemo.SystemCreatedAt;
                Rec.Insert();
            end;
            SalesCrMemo.Close();
        end;

    end;
}
