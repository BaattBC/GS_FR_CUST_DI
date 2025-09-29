pageextension 50202 "GSFR Sales Invoice Subform" extends "Sales Invoice Subform"
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
