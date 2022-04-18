codeunit 70001 Upgrade
{
    Subtype = Upgrade;

    trigger OnCheckPreconditionsPerDatabase()
    var
        myInfo: ModuleInfo;
    begin
        if NavApp.GetCurrentModuleInfo(myInfo) then
            if myInfo.DataVersion = Version.Create(1, 0, 0, 1) then
                message('Testeando versiones');
    end;

    trigger OnUpgradePerDatabase()
    begin
        // NavApp.RestoreArchiveData(Database::"TableName");      
    end;
}