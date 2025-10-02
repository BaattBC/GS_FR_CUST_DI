query 50203 "GSFR BI Sales Cr. Memo"
{
    Caption = 'GS BI Sales Cr. Memo';
    QueryType = Normal;
    OrderBy = descending(Document_No_);

    elements
    {

        dataitem(Sales_Cr_Memo_Header; "Sales Cr.Memo Header")
        {
            column(Document_No_; "No.")
            {
            }
            column(External_Document_No_; "External Document No.") { }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            { }
            column(Sell_to_Country_Region_Code; "Sell-to Country/Region Code")
            { }
            column(Posting_Date; "Posting Date")
            { }
            column(Currency_Code; "Currency Code")
            { }
            column(Bill_to_Customer_No_; "Bill-to Customer No.")
            { }
            column(Bill_to_Name; "Bill-to Name")
            { }
            column(Salesperson_Code; "Salesperson Code")
            { }
            column(Ship_to_Contact; "Ship-to Contact")
            { }
            dataitem(Sales_Cr_Memo_Line; "Sales Cr.Memo Line")
            {
                DataItemLink = "Document No." = Sales_Cr_Memo_Header."No.";
                SqlJoinType = InnerJoin;
                column(Line_No_; "Line No.")
                {
                }
                column("Type"; "Type")
                {
                }
                column(No_; "No.")
                {
                }
                column(Description; Description)
                {
                }
                column(Description_2; "Description 2")
                { }
                column(Gen__Prod__Posting_Group; "Gen. Prod. Posting Group")
                { }
                column(Quantity; Quantity)
                {
                }
                Column(Unit_of_Measure_Code; "Unit of Measure Code")
                {
                }
                column(Amount; Amount)
                {
                }
                column(Line_Amount; "Line Amount")
                { }
                column(Variant_Code; "Variant Code")
                { }
                column(SystemCreatedAt; SystemCreatedAt)
                { }

                dataitem(TTR_PS_SF_Sales_Transaction; "TTR PS SF Sales Transaction")
                {
                    DataItemLink = Settlement_Invoice_No = Sales_Cr_Memo_Line."Document No.";
                    SqlJoinType = LeftOuterJoin;

                    column(Customer_ID; Customer_ID)
                    { }
                    column(Customer_Name; Customer_Name)
                    { }
                }
            }
        }

    }



    trigger OnBeforeOpen()
    begin

    end;
}
