codeunit 50101 "AIR Upgrade codeunit"
{
    Subtype = Upgrade;

    trigger OnCheckPreconditionsPerDatabase()
    begin
        //if you will add insert any code that insert data to a table, 
        //where DataPerCompany = True, you will receive an error during publish process
        AddMessageToOurTable('OnCheckPreconditionsPerDatabase');
    end;

    trigger OnCheckPreconditionsPerCompany()
    begin
        AddMessageToOurTable('OnCheckPreconditionsPerCompany');
    end;

    trigger OnUpgradePerDatabase()
    begin
        AddMessageToOurTable('OnUpgradePerDatabase');
    end;

    trigger OnUpgradePerCompany()
    begin
        AddMessageToOurTable('OnUpgradePerCompany');
    end;

    trigger OnValidateUpgradePerDatabase()
    begin
        AddMessageToOurTable('OnValidateUpgradePerDatabase');
    end;

    trigger OnValidateUpgradePerCompany()
    begin
        AddMessageToOurTable('OnValidateUpgradePerCompany');
    end;

    local procedure AddMessageToOurTable(MessageFromTrigger: Text)
    var
        CheckInstallProcess: Record "AIR Check install process";
    begin
        CheckInstallProcess.InsertRecord(MessageFromTrigger);
    end;



}