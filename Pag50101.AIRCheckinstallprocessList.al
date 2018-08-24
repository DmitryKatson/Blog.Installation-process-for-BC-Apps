page 50101 "AIR Check install process List"
{

    PageType = List;
    SourceTable = "AIR Check install process";
    Caption = 'Check install process List';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Primary Key"; "Primary Key")
                {
                    ApplicationArea = All;
                }
                field("Trigger"; "Trigger")
                {
                    ApplicationArea = All;
                }
                field(Version; Version)
                {
                    ApplicationArea = All;
                }
                field("Company Name";"Company Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
