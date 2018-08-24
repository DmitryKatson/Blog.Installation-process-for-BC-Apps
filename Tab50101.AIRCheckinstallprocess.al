table 50101 "AIR Check install process"
{
    DataPerCompany = false;

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            AutoIncrement = true;
        }
        field(2; "Trigger"; Text[250])
        { }
        field(3; Version; Text[250])
        { }
        field(4; "Company Name"; Text[250])
        { }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure InsertRecord(MessageFromTrigger: Text)
    var
    begin
        Init();
        "Trigger" := MessageFromTrigger;
        "Company Name" := CompanyName();
        InsertVersionNo();
        Insert();
    end;

    local procedure InsertVersionNo()
    var
        AppInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(AppInfo);
        Version := Format(AppInfo.DataVersion());
    end;

}