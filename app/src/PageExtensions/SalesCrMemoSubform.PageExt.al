pageextension 50203 "GSFR Sales Cr. Memo Subform" extends "Sales Cr. Memo Subform"
{
    layout
    {
        modify("Deferral Code")
        {
            ApplicationArea = All;
            Visible = true;
            Editable = true;
            ToolTip = 'Specifies the deferral code for the sales invoice line. The deferral code determines how revenue is recognized over time.';
        }
    }
}
