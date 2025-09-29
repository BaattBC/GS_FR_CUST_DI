pageextension 50206 "GSFR Purch. Cr. Memo Sf" extends "Purch. Cr. Memo Subform"
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
