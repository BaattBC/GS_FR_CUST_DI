query 50202 "GSFR BI Sales Invoice"
{
    Caption = 'GSFR BI Sales Invoice';
    QueryType = Normal;
    OrderBy = descending(Document_No_);

    elements
    {

        dataitem(Sales_Invoice_Header; "Sales Invoice Header")
        {
            column(Document_No_; "No.")
            {
            }
            column(Pre_Assigned_No_; "Pre-Assigned No.")
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
            dataitem(Sales_Invoice_Line; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = Sales_Invoice_Header."No.";
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
                    DataItemLink = Settlement_Invoice_No = Sales_Invoice_Line."Document No.";
                    SqlJoinType = LeftOuterJoin;

                    column(Customer_ID; Customer_ID)
                    { }
                    column(Customer_Name; Customer_Name)
                    { }
                    column(Sales_Document_RecID; "Sales Document RecID")
                    { }
                    column(Product_Code; Product_Code)
                    { }
                    column(Entry_Source; Entry_Source)
                    {
                    }
                    column(Order_Type; Order_Type)
                    { }
                }
            }
        }

    }



    trigger OnBeforeOpen()
    begin

    end;

}
