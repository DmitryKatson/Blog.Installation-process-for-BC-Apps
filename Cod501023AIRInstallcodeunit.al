codeunit 50102 "AIR Install codeunit"
{
    Subtype = Install;

    trigger OnInstallAppPerDatabase()
    begin
        AddMessageToOurTable('OnInstallAppPerDatabase');
    end;

    trigger OnInstallAppPerCompany()
    begin
        AddMessageToOurTable('OnInstallAppPerCompany');
    end;

    local procedure AddMessageToOurTable(MessageFromTrigger: Text)
    var
        CheckInstallProcess: Record "AIR Check install process";
    begin
        CheckInstallProcess.InsertRecord(MessageFromTrigger);
    end;



}