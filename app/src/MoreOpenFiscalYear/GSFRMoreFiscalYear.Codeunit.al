codeunit 50201 "GSFR More Fiscal Year"
{
    [EventSubscriber(ObjectType::Table, Database::"Accounting Period", 'OnCheckOpenFiscalYearsOnBeforeError', '', true, true)]

    local procedure OnCheckOpenFiscalYearsOnBeforeError(var AccountingPeriod: Record "Accounting Period"; var IsHandled: Boolean)
    var
    begin
        IsHandled := true;
    end;
}
