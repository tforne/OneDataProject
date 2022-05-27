codeunit 99500 "IRPF Management"
{
    // version OneData016.01.00

    Permissions = TableData 113 = rimd;

    trigger OnRun()
    begin
    end;

    var
        GLSetup: Record 98;
        NextEntryNo : integer;
        PostLineGenJnl : Codeunit "Gen. Jnl.-Post Line";

    [EventSubscriber(ObjectType::Codeunit, 12, 'OnAfterPostVend', '', false, false)]
    local procedure "Codeunit12.OnAfterPostVend"(var GenJournalLine: Record "Gen. Journal Line"; Balancing: Boolean; var TempGLEntryBuf: Record "G/L Entry" temporary; var NextEntryNo: Integer; var NextTransactionNo: Integer)
    begin
    IF (GenJournalLine."Grupo IRPF" <> '') THEN
        "Registrar IRPF"(GenJournalLine)
    ELSE
        IF (GenJournalLine."Grupo IRPF Contrapartida" <> '') THEN BEGIN
            GenJournalLine."Grupo IRPF" := GenJournalLine."Grupo IRPF Contrapartida";
            GenJournalLine."Grupo IRPF" := GenJournalLine."Grupo IRPF Contrapartida";
            GenJournalLine."Importe IRPF" := -GenJournalLine."Importe IRPF";
            GenJournalLine."Importe IRPF (DL)" := - GenJournalLine."Importe IRPF (DL)";
            GenJournalLine."Base IRPF" := - GenJournalLine."Base IRPF";
            GenJournalLine."Base IRPF (DL)" := - GenJournalLine."Base IRPF (DL)";
            "Registrar IRPF"(GenJournalLine);
        END;
    end;

local procedure  "Registrar IRPF"(recPrmGenJnlLine : Record "Gen. Journal Line")
var
    recBufferIRPF : Record	"Grupos IRPF";
    recMovIRPF : Record	"Movs. IRPF";	
    recGrupoIRPF :	Record	"Grupos IRPF";
    GenJnlLine : Record	"Gen. Journal Line";
    GLEntry	: Record "G/L Entry";
begin
    //-001
    // Funcion que registra el IRPF. Genera el Movimiento de IRPF, lo contabiliza y
    // genera la contrapartida contra el cliente o porveedor.
    IF (recPrmGenJnlLine."Grupo IRPF" <> '') and (recPrmGenJnlLine."Importe IRPF" <> 0) then begin
    recBufferIRPF.LOCKTABLE;
    recBufferIRPF.SETFILTER("Importe IRPF", '<>%1', 0);
    IF recBufferIRPF.FINDSET THEN BEGIN
        REPEAT
        recMovIRPF.INIT;
        recMovIRPF."Nº Mov." := NextEntryNo;
        recMovIRPF."Fecha Registro" := recPrmGenJnlLine."Posting Date";//GLEntry."Posting Date";
        IF recPrmGenJnlLine."Account Type" = recPrmGenJnlLine."Account Type"::Customer THEN
            recMovIRPF.Tipo := recMovIRPF.Tipo::Ventas
        ELSE
            IF recPrmGenJnlLine."Account Type" = recPrmGenJnlLine."Account Type"::Vendor THEN
            recMovIRPF.Tipo := recMovIRPF.Tipo::Compras;
        recMovIRPF."Nº Documento" := recPrmGenJnlLine."Document No.";
        recMovIRPF."Grupo IRPF" := recBufferIRPF.Código;
        recMovIRPF."Tipo Cálculo" := recBufferIRPF."Tipo Cálculo";
        recMovIRPF."Nº Proveedor/Cliente" := recPrmGenJnlLine."Account No.";
        recMovIRPF.Base := recBufferIRPF."Base IRPF (DL)";
        recMovIRPF."Importe IRPF" := recBufferIRPF."Importe IRPF (DL)";
        IF recGrupoIRPF.GET(recMovIRPF."Grupo IRPF")THEN
            recMovIRPF."% Retención" := recGrupoIRPF."% Retención";
        recMovIRPF.Pendiente := TRUE;
        recMovIRPF.INSERT;
        //Registrar en Cta de IRPF
        CASE recMovIRPF.Tipo OF
            recMovIRPF.Tipo::Compras:
            IF recGrupoIRPF.GET(recMovIRPF."Grupo IRPF") THEN BEGIN
                recGrupoIRPF.TESTFIELD("Cta. Retención Soportado");
                PostLineGenJnl.InitGLEntry(recPrmGenJnlLine,GLEntry,recGrupoIRPF."Cta. Retención Soportado",recBufferIRPF."Importe IRPF",
                            recBufferIRPF."Importe IRPF (DL)",FALSE,TRUE);
                NextEntryNo := NextEntryNo+1;
                PostLineGenJnl.InsertGLEntry(recPrmGenJnlLine,GLEntry,TRUE);
            END;
            recMovIRPF.Tipo::Ventas:
            IF recGrupoIRPF.GET(recMovIRPF."Grupo IRPF") THEN BEGIN
                recGrupoIRPF.TESTFIELD("Cta. Retención Repercutido");
                PostLineGenJnl.InitGLEntry(GenJnlLine,GLEntry,recGrupoIRPF."Cta. Retención Repercutido",recBufferIRPF."Importe IRPF",
                            recBufferIRPF."Importe IRPF (DL)",FALSE,TRUE);
                NextEntryNo:=NextEntryNo+1;
                PostLineGenJnl.InsertGLEntry(GenJnlLine,GLEntry,TRUE);
            END;
        END;
        until recBufferIRPF.NEXT=0;
        "Contrapartida IRPF"(recPrmGenJnlLine);//GenJnlLine);
    END ELSE BEGIN
        recMovIRPF.INIT;
        recMovIRPF."Nº Mov." := NextEntryNo;
        recMovIRPF."Fecha Registro" := GLEntry."Posting Date";
        IF recPrmGenJnlLine."Account Type" = recPrmGenJnlLine."Account Type"::Customer THEN
        recMovIRPF.Tipo := recMovIRPF.Tipo::Ventas
        ELSE
        IF recPrmGenJnlLine."Account Type" = recPrmGenJnlLine."Account Type"::Vendor THEN
            recMovIRPF.Tipo := recMovIRPF.Tipo::Compras;
        recMovIRPF."Nº Documento" := recPrmGenJnlLine."Document No.";
        recMovIRPF."Grupo IRPF" := recPrmGenJnlLine."Grupo IRPF";
        recMovIRPF."Tipo Cálculo" := recPrmGenJnlLine."Tipo Cálculo IRPF";
        recMovIRPF."Nº Proveedor/Cliente" := recPrmGenJnlLine."Account No.";
        recMovIRPF.Base := recPrmGenJnlLine."Base IRPF (DL)";
        recMovIRPF."Importe IRPF" := recPrmGenJnlLine."Importe IRPF (DL)";
        IF recGrupoIRPF.GET(recMovIRPF."Grupo IRPF") THEN
        recMovIRPF."% Retención" := recGrupoIRPF."% Retención";
        recMovIRPF.Pendiente := TRUE;
        recMovIRPF.INSERT;
        // Registrar en Cta de IRPF
        CASE recMovIRPF.Tipo OF
            recMovIRPF.Tipo::Compras:
                IF recGrupoIRPF.GET(recMovIRPF."Grupo IRPF") THEN BEGIN
                recGrupoIRPF.TESTFIELD(recGrupoIRPF."Cta. Retención Soportado");
                PostLineGenJnl.InitGLEntry(GenJnlLine,GLEntry,recGrupoIRPF."Cta. Retención Soportado",recPrmGenJnlLine."Importe IRPF",
                            recPrmGenJnlLine."Importe IRPF (DL)",FALSE,TRUE);
                NextEntryNo := NextEntryNo+1;
                PostLineGenJnl.InsertGLEntry(GenJnlLine,GLEntry,TRUE);
                "Contrapartida IRPF"(GenJnlLine);
                END;
            recMovIRPF.Tipo::Ventas:
                IF recGrupoIRPF.GET(recMovIRPF."Grupo IRPF") THEN BEGIN
                    recGrupoIRPF.TESTFIELD(recGrupoIRPF."Cta. Retención Repercutido");
                    PostLineGenJnl.InitGLEntry(GenJnlLine,GLEntry,recGrupoIRPF."Cta. Retención Repercutido",recPrmGenJnlLine."Importe IRPF",
                                recPrmGenJnlLine."Importe IRPF (DL)",FALSE,TRUE);
                    NextEntryNo := NextEntryNo+1;
                    PostLineGenJnl.InsertGLEntry(GenJnlLine,GLEntry,TRUE);
                END;
            END;
        END;
    END;
end;
//+001

local procedure "Contrapartida IRPF"(GenJnlLine : Record "Gen. Journal Line")
//-001
// Funcion que rellena una línea de diario que liquida contra el cliente o proveedor
// que genera el movimiento de IRPF
var
recLinDiarioAux	: Record	"Gen. Journal Line";
begin
    recLinDiarioAux.INIT;
    recLinDiarioAux."Document Type" := recLinDiarioAux."Document Type"::" ";
    recLinDiarioAux."Document No." := GenJnlLine."Document No.";
    recLinDiarioAux."Journal Template Name" := GenJnlLine."Journal Template Name";
    recLinDiarioAux."Journal Batch Name" := GenJnlLine."Journal Batch Name";
    recLinDiarioAux.VALIDATE("Account Type", GenJnlLine."Account Type");
    recLinDiarioAux.VALIDATE("Account No.", GenJnlLine."Account No.");
    recLinDiarioAux."Posting Date" := GenJnlLine."Posting Date";
    recLinDiarioAux.VALIDATE(Amount, -GenJnlLine."Importe IRPF");

    //Correccion en esta version IRPF
    //recLinDiarioAux.VALIDATE("Applies-to Doc. Type",GenJnlLine."Document Type");
    //recLinDiarioAux.VALIDATE("Applies-to Doc. No.",GenJnlLine."Document No.");
    recLinDiarioAux."Applies-to Doc. Type" := GenJnlLine."Document Type";
    recLinDiarioAux."Applies-to Doc. No." := GenJnlLine."Document No.";

    recLinDiarioAux.Description := GenJnlLine.Description;
    recLinDiarioAux."Shortcut Dimension 1 Code" := GenJnlLine."Shortcut Dimension 1 Code";
    recLinDiarioAux."Shortcut Dimension 2 Code" := GenJnlLine."Shortcut Dimension 2 Code";
    recLinDiarioAux."Source Code" := GenJnlLine."Source Code";
    recLinDiarioAux.VALIDATE("Grupo IRPF", '');

    //recTempJnlLineDimAux.RESET;
    //recTempJnlLineDimAux.DELETEALL;
    //DimMgt.CopyJnlLineDimToJnlLineDim(TempJnlLineDim,recTempJnlLineDimAux);
    PostLineGenJnl.FinishPosting(GenJnlLine);
    PostLineGenJnl.RunWithCheck(recLinDiarioAux);//,recTempJnlLineDimAux);
    PostLineGenJnl.StartPosting(GenJnlLine);//InitCodeUnit;
    //+001
end;
procedure EditarMovRetenciónObra (Rec : Record "Movs. retención obra")
var
    RecRef	: RecordRef;		
    xRecRef	: RecordRef;
    g_recMovRetencion : Record	"Movs. retención obra";
    g_cduChangeLogMgt : Codeunit "Change Log Management";
begin
    g_recMovRetencion := Rec;
    g_recMovRetencion.LOCKTABLE;
    g_recMovRetencion.FIND;
    xRecRef.GETTABLE(g_recMovRetencion);

    IF g_recMovRetencion.Pendiente THEN BEGIN
    g_recMovRetencion."No." := Rec."No.";
    g_recMovRetencion."Due Date" := Rec."Due Date";
    g_recMovRetencion.Description := Rec.Description;
    END;
    g_recMovRetencion.MODIFY;
    Rec := g_recMovRetencion;
    RecRef.GETTABLE(g_recMovRetencion);
    g_cduChangeLogMgt.LogModification(RecRef);
end;

procedure "GLReg-Movs.RetenciónObra" (Rec : Record "G/L Register")
var
    g_recMovRentencion : Record "Movs. retención obra";
begin
    g_recMovRentencion.reset;
    g_recMovRentencion.SETRANGE("Entry No.", Rec."From Entry No.",Rec."To Entry No.");
    PAGE.RUN(PAGE::"Prov. Movs. retención obra", g_recMovRentencion);
end;
}