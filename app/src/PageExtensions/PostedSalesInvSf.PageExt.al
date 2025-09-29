pageextension 50204 "GSFR Posted Sales Inv Sf." extends "Posted Sales Invoice Subform"
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
