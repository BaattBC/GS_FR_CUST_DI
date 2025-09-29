pageextension 50201 "GSFR Fixed Asset Card" extends "Fixed Asset Card"
{
    layout
    {
        addafter(DepreciationMethod)
        {
            field(FADepreciationBook; FADepreciationBook."Disposal Date")
            {
                ApplicationArea = All;
                Caption = 'Disposal Date';
                ToolTip = 'Specifies the date when the fixed asset is disposed of.';
                Editable = false;
            }
        }
    }
}
