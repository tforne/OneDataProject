report 90071 "Formato Factura 02"
{
    // version DP,CAMPMANY

    DefaultLayout = RDLC;
    RDLCLayout = './One Data/Apps/Reports adicionales/Documentos/RDLCLayout/Formato Factura 02.rdl';
    CaptionML = ENU = 'Sales - Invoice formmat 02',
                ESP = 'Ventas - Factura format 02';
    Permissions = TableData 7190 = rimd;
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = ENU = 'Posted Sales Invoice',
                                     ESP = 'Histórico facturas venta';
            column(vIMPBRUTO; vIMPBRUTO)
            {
            }
            column(No_SalesInvHdr; "No.")
            {
            }
            column(PaymentTermsDescription; PaymentTerms.Description)
            {
            }
            column(ShipmentMethodDescription; ShipmentMethod.Description)
            {
            }
            column(PaymentMethodDescription; PaymentMethod.Description)
            {
            }
            column(PmtTermsDescCaption; PmtTermsDescCaptionLbl)
            {
            }
            column(ShpMethodDescCaption; ShpMethodDescCaptionLbl)
            {
            }
            column(PmtMethodDescCaption; PmtMethodDescCaptionLbl)
            {
            }
            column(DocDateCaption; DocDateCaptionLbl)
            {
            }
            column(HomePageCaption; HomePageCaptionCap)
            {
            }
            column(EmailCaption; EmailCaptionLbl)
            {
            }
            column(RefProvSuNtraFra; RefProvSuNtraFra)
            {
            }
            column(EnvADir1; EnvADir[1])
            {
            }
            column(EnvADir2; EnvADir[2])
            {
            }
            column(EnvADir3; EnvADir[3])
            {
            }
            column(EnvADir4; EnvADir[4])
            {
            }
            column(EnvADir5; EnvADir[5])
            {
            }
            column(DirClie1; DirClie[1])
            {
            }
            column(DirClie2; DirClie[2])
            {
            }
            column(DirClie3; DirClie[3])
            {
            }
            column(DirClie4; DirClie[4])
            {
            }
            column(DirClie5; DirClie[5])
            {
            }
            column(DirClie6; DirClie[5])
            {
            }
            column(FormaPagoDesc; FormaPago.Description)
            {
            }
            column(aFechaVto1; aFechaVto[1])
            {
            }
            column(aFechaVto2; aFechaVto[2])
            {
            }
            column(aFechaVto3; aFechaVto[3])
            {
            }
            column(CodDivisa2; CodDivisa2)
            {
            }
            column(aImpVto1; aImpVto[1])
            {
            }
            column(aImpVto2; aImpVto[2])
            {
            }
            column(aImpVto3; aImpVto[3])
            {
            }
            column(banco1; rgBcoCli.Name + ' ' + rgBcoCli."Name 2")
            {
            }
            column(banco2; rgBcoCli.Address)
            {
            }
            column(banco3; rgBcoCli."Post Code" + ' ' + rgBcoCli.City)
            {
            }
            column(bancoCCC; rgBcoCli."CCC Bank No." + '.' + rgBcoCli."CCC Bank Branch No." + '.' + rgBcoCli."CCC Control Digits" + '.****')
            {
            }
            column(aPagos; aPagos)
            {
            }
            column(txOferta1; txOferta1)
            {
            }
            column(txPreciosIVAinc; txPreciosIVAinc)
            {
            }
            column(Duplicado; Duplicado)
            {
            }
            column(ImprimirLogos; ImprimirLogos)
            {
            }
            column(vDTOPP; vDTOPP)
            {
            }
            column(vDTOFAC; vDTOFAC)
            {
            }
            column(vBASEIMP1; vBASEIMP[1])
            {
            }
            column(vBASEIMP2; vBASEIMP[2])
            {
            }
            column(vBASEIMP3; vBASEIMP[3])
            {
            }
            column(vPERCIVA1; vPERCIVA[1])
            {
            }
            column(vPERCIVA2; vPERCIVA[2])
            {
            }
            column(vPERCIVA3; vPERCIVA[3])
            {
            }
            column(vIMPIVA1; vIMPIVA[1])
            {
            }
            column(vIMPIVA2; vIMPIVA[2])
            {
            }
            column(vIMPIVA3; vIMPIVA[3])
            {
            }
            column(vPERRE1; vPERRE[1])
            {
            }
            column(vPERRE2; vPERRE[2])
            {
            }
            column(vPERRE3; vPERRE[3])
            {
            }
            column(vIMPRE1; VIMPRE[1])
            {
            }
            column(vIMPRE2; VIMPRE[2])
            {
            }
            column(vIMPRE3; VIMPRE[3])
            {
            }
            column(vTOTAL; vTOTAL)
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                column(TextoCopia; TextoCopia)
                {
                }
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(Picture; CompanyInfo.Picture)
                    {
                    }
                    column(DocumentCaption; STRSUBSTNO(DocumentCaption, CopyText))
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CompanyInfoFaxNo; CompanyInfo."Fax No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CompanyInfoVATRegistrationNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo; txtCuenta)
                    {
                    }
                    column(TxtCuenta2; rgBcoCli."CCC Bank No." + '.' + rgBcoCli."CCC Bank Branch No." + '.' + rgBcoCli."CCC Control Digits" + '.' + PADSTR(rgBcoCli."CCC Bank Account No.", 4) + aaa)
                    {
                    }
                    column(CuentaTrans; CuentaTrans)
                    {
                    }
                    column(BilltoCustNo_SalesInvHdr; "Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostingDate_SalesInvHdr; FORMAT("Sales Invoice Header"."Posting Date", 0, 4))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesInvHeader; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHeader; FORMAT("Sales Invoice Header"."Due Date", 0, 4))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(No_SalesInvoiceHeader1; "Sales Invoice Header"."No.")
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourReference_SalesInvHdr; "Sales Invoice Header"."Your Reference")
                    {
                    }
                    column(OrderNoText; OrderNoText)
                    {
                    }
                    column(OrderNo_SalesInvHeader; "Sales Invoice Header"."Order No.")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(DocDate_SalesInvoiceHdr; FORMAT("Sales Invoice Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdr; "Sales Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo; FORMAT("Sales Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption; BankNameCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption; BankAccNoCaptionLbl)
                    {
                    }
                    column(DueDateCaption; DueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption; InvoiceNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption; PostingDateCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(CACCaption; CACCaptionLbl)
                    {
                    }
                    column(txtBIC; txtBIC)
                    {
                    }
                    column(txtEmbPP; txtEmbPP)
                    {
                    }
                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(Number_DimensionLoop1; Number)
                        {
                        }
                        column(HdrDimsCaption; HdrDimsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FINDSET THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {

                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(GetCarteraInvoice; GetCarteraInvoice)
                        {
                        }
                        column(LineAmt_SalesInvoiceLine; "Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Description_SalesInvLine; Description)
                        {
                        }
                        column(txDesc; txDesc)
                        {
                        }
                        column(No_SalesInvoiceLine; "No.")
                        {
                        }
                        column(Quantity_SalesInvoiceLine; Quantity)
                        {
                        }
                        column(UOM_SalesInvoiceLine; "Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesInvLine; "Unit Price")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(LineDisc_SalesInvoiceLine; "Line Discount %")
                        {
                        }
                        column(VATIdent_SalesInvLine; "VAT Identifier")
                        {
                        }
                        column(PostedShipmentDate; FORMAT(PostedShipmentDate))
                        {
                        }
                        column(Type_SalesInvoiceLine; FORMAT("Sales Invoice Line".Type))
                        {
                        }
                        column(InvDiscountAmount; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal; TotalSubTotal)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvoiceDiscountAmount; TotalInvoiceDiscountAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmount; TotalAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalGivenAmount; TotalGivenAmount)
                        {
                        }
                        column(SalesInvoiceLineAmount; Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmountIncludingVATAmount; "Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Amount_SalesInvoiceLineIncludingVAT; "Amount Including VAT")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountVAT; TotalAmountVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr; "Sales Invoice Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscountOnVAT; TotalPaymentDiscountOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATCalcType; VATAmountLine."VAT Calculation Type")
                        {
                        }
                        column(LineNo_SalesInvoiceLine; "Line No.")
                        {
                        }
                        column(PmtinvfromdebtpaidtoFactCompCaption; PmtinvfromdebtpaidtoFactCompCaptionLbl)
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscountCaption; DiscountCaptionLbl)
                        {
                        }
                        column(AmtCaption; AmtCaptionLbl)
                        {
                        }
                        column(PostedShpDateCaption; PostedShpDateCaptionLbl)
                        {
                        }
                        column(InvDiscAmtCaption; InvDiscAmtCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(PmtDiscGivenAmtCaption; PmtDiscGivenAmtCaptionLbl)
                        {
                        }
                        column(PmtDiscVATCaption; PmtDiscVATCaptionLbl)
                        {
                        }
                        column(Description_SalesInvLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(No_SalesInvoiceLineCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Quantity_SalesInvoiceLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_SalesInvoiceLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATIdent_SalesInvLineCaption; FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        column(CodUnidadMedida; "Sales Invoice Line"."Unit of Measure Code")
                        {
                        }
                        column(deImporte; deImporte)
                        {
                        }
                        column(BoolShowNSerie; BoolShowNSerieAux)
                        {
                        }
                        dataitem(NumSerieBuffer; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(NLote; tmpILE."Lot No.")
                            {
                            }
                            column(CantidadLote; tmpILE.Quantity)
                            {
                            }
                            column(UnidadMedidaLote; tmpILE."Unit of Measure Code")
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                BoolShowNSerieAux := FALSE;

                                IF Number = 1 THEN BEGIN
                                    IF tmpILE.FINDFIRST() THEN BEGIN
                                        IF (tmpILE."Lot No." <> '') THEN
                                            BoolShowNSerieAux := TRUE;
                                    END
                                END
                                ELSE
                                    tmpILE.NEXT;
                            end;

                            trigger OnPostDataItem();
                            begin

                                tmpILE.DELETEALL;
                            end;

                            trigger OnPreDataItem();
                            begin

                                BoolShowNSerieAux := FALSE;

                                IF NOT BoolShowNSerie THEN CurrReport.BREAK;
                                //TrackingMng.RetrieveILEFromPostedInv(tmpILE,"Sales Invoice Line".RowID1);
                                SETRANGE(Number, 1, tmpILE.COUNT);
                                IF tmpILE.COUNT = 0 THEN BoolShowNSerieAux := FALSE;
                            end;
                        }
                        dataitem("Sales Shipment Buffer"; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(PostingDate_SalesShipmentBuffer; FORMAT(SalesShipmentBuffer."Posting Date"))
                            {
                            }
                            column(Quantity_SalesShipmentBuffer; SalesShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(ShpCaption; ShpCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN
                                    SalesShipmentBuffer.FIND('-')
                                ELSE
                                    SalesShipmentBuffer.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");

                                SETRANGE(Number, 1, SalesShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimsCaption; LineDimsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDSET THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Sales Invoice Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(TempPostedAsmLineUOMCode; GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                            }
                            column(TempPostedAsmLineQuantity; TempPostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineVariantCode; BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                            }
                            column(TempPostedAsmLineDescrip; BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(TempPostedAsmLineNo; BlanksForIndent + TempPostedAsmLine."No.")
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN
                                    TempPostedAsmLine.FINDSET
                                ELSE
                                    TempPostedAsmLine.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                CLEAR(TempPostedAsmLine);
                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK;
                                CollectAsmInformation;
                                CLEAR(TempPostedAsmLine);
                                SETRANGE(Number, 1, TempPostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin

                            //campmany
                            //CVP 2017-03-03 ini
                            "txtEmb-PP" := 'DTO. P.P.';
                            txtEmbPPAux := TRUE;
                            //CVP Fi

                            IF "Inv. Discount Amount" <> 0 THEN BEGIN
                                txtPortes := 'DTO. FACTURA';
                            END ELSE BEGIN
                                txtPortes := 'PORTES';
                            END;

                            //


                            PostedShipmentDate := 0D;
                            IF Quantity <> 0 THEN
                                PostedShipmentDate := FindPostedShipmentDate;

                            IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "No." := '';

                            IF VATPostingSetup.GET("Sales Invoice Line"."VAT Bus. Posting Group", "Sales Invoice Line"."VAT Prod. Posting Group") THEN BEGIN
                                VATAmountLine.INIT;
                                VATAmountLine."VAT Identifier" := "VAT Identifier";
                                VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                                VATAmountLine."Tax Group Code" := "Tax Group Code";
                                VATAmountLine."VAT %" := VATPostingSetup."VAT %";
                                VATAmountLine."EC %" := VATPostingSetup."EC %";
                                // VATAmountLine."VAT+EC Base" := "Sales Invoice Line".Amount;
                                // VATAmountLine."Amount Including VAT+EC" := "Sales Invoice Line"."Amount Including VAT";
                                VATAmountLine."Line Amount" := "Line Amount";
                                // VATAmountLine."Pmt. Disc. Given Amount" := "Pmt. Disc. Given Amount";
                                IF "Allow Invoice Disc." THEN
                                    VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                                VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                                VATAmountLine.SetCurrencyCode("Sales Invoice Header"."Currency Code");
                                VATAmountLine."VAT Difference" := "VAT Difference";
                                VATAmountLine."EC Difference" := "EC Difference";
                                IF "Sales Invoice Header"."Prices Including VAT" THEN
                                    VATAmountLine."Prices Including VAT" := TRUE;
                                VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                                VATAmountLine.InsertLine;

                                TotalSubTotal += "Line Amount";
                                TotalInvoiceDiscountAmount -= "Inv. Discount Amount";
                                TotalAmount += Amount;
                                TotalAmountVAT += "Amount Including VAT" - Amount;
                                TotalAmountInclVAT += "Amount Including VAT";
                                // TotalGivenAmount-= "Pmt. Disc. Given Amount";
                                TotalPaymentDiscountOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");
                            END;

                            //txDesc := Description+' '+"Description 2" + ' '+ Observaciones;
                            deImporte := "Unit Price" * Quantity;
                            //**campmany
                        end;

                        trigger OnPreDataItem();
                        begin
                            VATAmountLine.DELETEALL;
                            SalesShipmentBuffer.RESET;
                            SalesShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");


                            // Marj, Alloza
                            IF (boAgruparLin) THEN BEGIN
                                "Sales Invoice Line".SETCURRENTKEY(Type, "No.", "Unit Price");
                                // CurrReport.CREATETOTALS(Quantity,Amount,"Cantidad 2");
                            END;

                            CurrReport.CREATETOTALS("Line Amount", Amount, "Amount Including VAT", "Inv. Discount Amount");
                            //CVP 2017-03-03 ini
                            //potser en ealguna linia no n'hi ha i fa que surti malament el literal. ha de sortir sempre que n'hi hagi
                            txtEmbPPAux := FALSE;
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmountLineVATAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineLineAmount; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscountAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineECAmount; VATAmountLine."EC Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 6;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountLineEC; VATAmountLine."EC %")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATCaption; VATAmtLineVATCaptionLbl)
                        {
                        }
                        column(VATECBaseCaption; VATECBaseCaptionLbl)
                        {
                        }
                        column(VATAmountCaption; VATAmountCaptionLbl)
                        {
                        }
                        column(VATAmtSpecCaption; VATAmtSpecCaptionLbl)
                        {
                        }
                        column(VATIdentCaption; VATIdentCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption1; LineAmtCaption1Lbl)
                        {
                        }
                        column(InvPmtDiscCaption; InvPmtDiscCaptionLbl)
                        {
                        }
                        column(ECAmtCaption; ECAmtCaptionLbl)
                        {
                        }
                        column(ECCaption; ECCaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            IF VATAmountLine."VAT Amount" = 0 THEN
                                VATAmountLine."VAT %" := 0;
                            IF VATAmountLine."EC Amount" = 0 THEN
                                VATAmountLine."EC %" := 0;
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Amount",
                              VATAmountLine."EC Amount");
                        end;
                    }
                    dataitem(VATClauseEntryCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATClauseVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode; VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseDescription; VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2; VATClause."Description 2")
                        {
                        }
                        column(VATClauseAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATClausesCaption; VATClausesCap)
                        {
                        }
                        column(VATClauseVATIdentifierCaption; VATIdentifierCaptionLbl)
                        {
                        }
                        column(VATClauseVATAmtCaption; VATAmtCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            IF NOT VATClause.GET(VATAmountLine."VAT Clause Code") THEN
                                CurrReport.SKIP;
                            VATClause.TranslateDescription("Sales Invoice Header"."Language Code");
                        end;

                        trigger OnPreDataItem();
                        begin
                            CLEAR(VATClause);
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VatCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT1; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier1; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VALVATBaseLCYCaption1; VALVATBaseLCYCaption1Lbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Invoice Header"."Currency Code" = '')
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text007 + Text008
                            ELSE
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Sales Invoice Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text009, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(SelltoCustNo_SalesInvHdr; "Sales Invoice Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddressCaption; ShiptoAddressCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }
                        dataitem("Company Information"; "Company Information")
                        {
                            column(Phone; CompanyInfo."Phone No.")
                            {
                            }
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowShippingAddr THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    IF NOT CopiaInterna THEN BEGIN
                        IF Number > 1 THEN BEGIN
                            TextoCopia := 'COPIA ' + FORMAT(Number - 1);
                            OutputNo += 1;
                        END;
                    END;
                    CurrReport.PAGENO := 1;



                    TotalSubTotal := 0;
                    TotalInvoiceDiscountAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalGivenAmount := 0;
                    TotalPaymentDiscountOnVAT := 0;
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT CurrReport.PREVIEW THEN
                        SalesInvCountPrinted.RUN("Sales Invoice Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NOT CopiaInterna THEN BEGIN
                        TextoCopia := 'ORIGINAL';
                        IF NoOfLoops <= 0 THEN BEGIN
                            NoOfLoops := 1;
                            TextoCopia := 'ORIGINAL';
                        END;
                    END ELSE BEGIN
                        NoOfLoops := ABS(NoOfCopies) + 1;
                        TextoCopia := 'INTERNA';
                    END;
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            var
                recEmpresa: Record "Company Information";
                recFormaPago: Record "Payment Method";
            begin
                //**Campmany
                TextoCopia := '';
                InfoEmpresa.GET;
                FormatDire.Company(DirEmpresa, InfoEmpresa);

                vIMPBRUTO := GetImporteBruto("Sales Invoice Header");
                vDTOPP := GetImporteDtoPP("Sales Invoice Header");
                vDTOFAC := GetImporteDtoFAC("Sales Invoice Header");
                vTOTAL := GetImporteTotal("Sales Invoice Header");
                AsignarVariablesVAT("Sales Invoice Header");

                IF "Sales Invoice Header"."Shortcut Dimension 1 Code" = 'SERVER' THEN BEGIN
                    // CompanyAddr[1] := CompanyInfo."Nombre fiscal Server";
                    CompanyAddr[2] := CompanyInfo.Address;
                    CompanyAddr[3] := CompanyInfo."Address 2";
                    CompanyAddr[4] := CompanyInfo."Post Code" + ' ' + CompanyInfo.City + ' - ' + CompanyInfo.County;
                    // CompanyAddr[5] := 'Tel. ' + CompanyInfo."Phone No. Server" + ' - Fax ' + CompanyInfo."Fax No. Server";
                    // CompanyAddr[6] := CompanyInfo."E-Mail Server";
                END ELSE BEGIN
                    // CompanyAddr[1] := CompanyInfo."Nombre fiscal";
                    CompanyAddr[2] := CompanyInfo.Address;
                    CompanyAddr[3] := CompanyInfo."Address 2";
                    CompanyAddr[4] := CompanyInfo."Post Code" + ' ' + CompanyInfo.City + ' - ' + CompanyInfo.County;
                    CompanyAddr[5] := 'Tel. ' + CompanyInfo."Phone No." + ' - Fax ' + CompanyInfo."Fax No.";
                    CompanyAddr[6] := CompanyInfo."Home Page";

                END;

                if "language Code" <> '' then begin
                    if Language.get("Language Code") then
                        CurrReport.LANGUAGE := Language."Windows Language ID";
                end;

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE BEGIN
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                END;

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                IF "Order No." = '' THEN
                    OrderNoText := ''
                ELSE
                    OrderNoText := FIELDCAPTION("Order No.");
                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    SalesPersonText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;
                IF "Your Reference" = '' THEN
                    ReferenceText := ''
                ELSE
                    ReferenceText := FIELDCAPTION("Your Reference");
                IF "VAT Registration No." = '' THEN
                    VATNoText := ''
                ELSE
                    VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text001, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text1100000, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text1100001, GLSetup."LCY Code");
                END ELSE BEGIN
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text1100000, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text1100001, "Currency Code");
                END;
                FormatAddr.SalesInvBillTo(CustAddr, "Sales Invoice Header");
                IF NOT Cust.GET("Bill-to Customer No.") THEN
                    CLEAR(Cust);

                IF "Payment Terms Code" = '' THEN
                    PaymentTerms.INIT
                ELSE BEGIN
                    PaymentTerms.GET("Payment Terms Code");
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                END;

                IF "Payment Method Code" = '' THEN
                    PaymentMethod.INIT
                ELSE
                    PaymentMethod.GET("Payment Method Code");
                IF "Shipment Method Code" = '' THEN
                    ShipmentMethod.INIT
                ELSE BEGIN
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                END;
                //FormatAddr.SalesInvShipTo(ShipToAddr,"Sales Invoice Header");
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                    IF ShipToAddr[i] <> CustAddr[i] THEN
                        ShowShippingAddr := TRUE;

                ShowCashAccountingCriteria;

                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN BEGIN
                        IF "Bill-to Contact No." <> '' THEN
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '')
                        ELSE
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Customer, "Bill-to Customer No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '');
                    END;

                //*Campmany

                IF "Currency Code" = '' THEN
                    CodDivisa2 := ConfCG."LCY Code"
                ELSE
                    CodDivisa2 := "Currency Code";

                IF "Order No." = '' THEN
                    TextNoPedido := ''
                ELSE
                    TextNoPedido := FIELDNAME("Order No.");
                IF "Salesperson Code" = '' THEN BEGIN
                    RepreVtasComp.INIT;
                    DescriVendedor := '';
                END ELSE BEGIN
                    IF RepreVtasComp.GET("Salesperson Code") THEN
                        DescriVendedor := 'Representante';
                END;
                IF "Your Reference" = '' THEN
                    DescriRefer := ''
                ELSE
                    DescriRefer := FIELDNAME("Your Reference");
                IF "VAT Registration No." = '' THEN
                    TextoCIF := ''
                ELSE
                    TextoCIF := FIELDNAME("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    ConfCG.TESTFIELD("LCY Code");
                    TotalTexto := STRSUBSTNO('Total %1', ConfCG."LCY Code");
                    TextoTotIVAIncl := STRSUBSTNO('Total %1 incl. IVA', ConfCG."LCY Code");
                END ELSE BEGIN
                    TotalTexto := STRSUBSTNO('Total %1', "Currency Code");
                    TextoTotIVAIncl := STRSUBSTNO('Total %1 incl. IVA', "Currency Code");
                END;

                //FormatDire.SalesInvSellTo(DirClie,"Sales Invoice Header");
                //ARP Obtenemos la dirección de FACTURA del cliente (si existe).
                rDirFactura.INIT;
                //IF rDirFactura.GET("Sell-to Customer No.",'FACTURA') THEN
                // FormatDire.SalesFacturaToNoContact(DirClie, rDirFactura)
                //ELSE
                //FormatDire.SalesInvSellToNoContact(DirClie,"Sales Invoice Header");

                Clie.GET("Bill-to Customer No.");
                IF "Payment Terms Code" = '' THEN
                    TerminosPago.INIT
                ELSE
                    TerminosPago.GET("Payment Terms Code");
                IF "Payment Method Code" = '' THEN
                    FormaPago.INIT
                ELSE
                    FormaPago.GET("Payment Method Code");
                IF "Shipment Method Code" = '' THEN
                    CondEnv.INIT
                ELSE
                    CondEnv.GET("Shipment Method Code");
                FormatDire.SalesInvBillTo(EnvADir, "Sales Invoice Header");
                MostrarDireEnvio := "Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i := 1 TO ARRAYLEN(EnvADir) DO
                    IF EnvADir[i] <> DirClie[i] THEN
                        MostrarDireEnvio := TRUE;

                //Rellena Matriz con los Vtos e importes
                CLEAR(aFechaVto);
                CLEAR(aImpVto);
                rgContCli.SETCURRENTKEY(rgContCli."Document Type", rgContCli."Document No.", rgContCli."Customer No.");
                rgContCli.SETRANGE(rgContCli."Document Type", rgContCli."Document Type"::Bill);
                rgContCli.SETRANGE(rgContCli."Document No.", "Sales Invoice Header"."No.");
                rgContCli.SETRANGE(rgContCli."Customer No.", "Sales Invoice Header"."Bill-to Customer No.");
                numa := 0;
                IF rgContCli.FIND('-') THEN
                    REPEAT
                        numa := numa + 1;
                        aFechaVto[numa] := rgContCli."Due Date";
                        //////////////////////////////////////////// 11/11/02 jts
                        rgContCli.CALCFIELDS(Amount);
                        ////////////////////////////////////////////
                        aImpVto[numa] := rgContCli.Amount;
                    UNTIL (rgContCli.NEXT = 0) OR (numa = 3);
                IF numa = 0 THEN BEGIN
                    aFechaVto[1] := "Sales Invoice Header"."Due Date";
                    CALCFIELDS("Sales Invoice Header"."Amount Including VAT");
                    aImpVto[1] := "Sales Invoice Header"."Amount Including VAT";
                END;
                //REDIVA Busca el banco del cliente
                textCCC := '';
                aPagos := '';
                IF (FormaPago."Create Bills" AND (FormaPago."Collection Agent" = FormaPago."Collection Agent"::Bank)) THEN BEGIN
                    //// xavals 12/05/06 variable para ocultar la cuenta entera del cliente
                    aaa := '* * * * *';
                    aPagos := 'Autorización expresa de domiciliación bancaria en la cuenta arriba indicada, por el importe contenido en la ';
                    aPagos := aPagos + 'presente factura, a menos que se opongan expresamente en un plazo de 5 días desde su recepción.';
                    ////
                    IF NOT rgBcoCli.GET("Sales Invoice Header"."Bill-to Customer No.",
                                        "Sales Invoice Header"."Cust. Bank Acc. Code") THEN BEGIN
                        CLEAR(rgBcoCli);

                        aaa := '';
                        aPagos := '';
                    END
                END ELSE BEGIN
                    aaa := '';
                    CLEAR(rgBcoCli);
                END;

                // Marj, Alloza

                rgCliente.GET("Sales Invoice Header"."Sell-to Customer No.");
                CLEAR(Duplicado);
                IF "Sales Invoice Header"."No. Printed" <> 0 THEN
                    Duplicado := 'DUPLICADO';

                // MIGVAZ Cogemos los datos del nº de proveedor para el cliente y de la referencia del cliente.
                //IF rgCliente."Proveedor en Clte" <> '' THEN
                // RefProvSuNtraFra := 'REF. PROVEEDOR: ' + rgCliente."Proveedor en Clte" + '    '
                //ELSE
                //RefProvSuNtraFra := '';

                IF "Sales Invoice Header"."Your Reference" <> '' THEN
                    RefProvSuNtraFra := RefProvSuNtraFra + 'SU/NTRA. REF.: ' + "Sales Invoice Header"."Your Reference";

                // Gestió preus amb IVA
                IF "Prices Including VAT" THEN BEGIN
                    txPreciosIVAinc := 'PRECIOS IVA INCLUIDO';
                END ELSE BEGIN
                    txPreciosIVAinc := '';
                END;


                rgConfVenta.GET;
                txOferta1 := '';
                //IF "Shortcut Dimension 1 Code" = 'SERVER' THEN
                // txOferta1 := rgConfVenta."Texto Factura Server"
                //ELSE
                // txOferta1 := rgConfVenta."Texto Factura Campmany";

                //*Campmany

                //*Campmany

                txtCuenta := '';
                txtBIC := '';
                CuentaTrans := FALSE;
                IF recFormaPago.GET("Sales Invoice Header"."Payment Method Code") THEN BEGIN
                    IF (recFormaPago."Create Bills") AND (recFormaPago."Bill Type" = recFormaPago."Bill Type"::Transfer) THEN BEGIN
                        //recEmpresa.GET;
                        //txtCuenta := recEmpresa."CCC Bank No."+'.'+recEmpresa."CCC Bank Branch No."+'.'+recEmpresa."CCC Control Digits"+'.';
                        //txtCuenta := txtCuenta + recEmpresa."CCC Bank Account No.";
                        txtCuenta := 'IBAN ES91 0081 0114 4200 0103 3009';
                        //CVP 2016-06-16 ini
                        //txtBIC := '';
                        txtBIC := Numero;
                        //CVP fi
                        //CVP 2016-12-28 ini
                        //Variable per saber si s'ha d'escriure o  no la variable txtcuenta
                        CuentaTrans := TRUE;
                        //CVP fi
                    END;
                END;

                //CVP 2017-03-06 ini
                txtEmbPP := '';
                txtEmbPPAux := FALSE;
                shiplines.RESET;
                shiplines.SETRANGE(shiplines."Document No.", "Sales Invoice Header"."No.");
                IF shiplines.FINDSET THEN
                    REPEAT
                        txtEmbPP := 'DTO. P.P.';
                        txtEmbPPAux := TRUE;
                    UNTIL shiplines.NEXT = 0;
                //CVP fi
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    CaptionML = ENU = 'Options',
                                ESP = 'Opciones';
                    field(NoOfCopies; NoOfCopies)
                    {
                        CaptionML = ENU = 'No. of Copies',
                                    ESP = 'Nº copias';
                    }
                    field(CopiaInterna; CopiaInterna)
                    {
                        Caption = 'Copia Interna';
                    }
                    field(ImprimirLogos; ImprimirLogos)
                    {
                        Caption = 'Imprimir Logos';
                    }
                    field(boolShowNumSerie; BoolShowNSerie)
                    {
                        Caption = 'Mostrar número de lote';
                    }
                    field(boAgruparLin; boAgruparLin)
                    {
                        Caption = 'Agrupar Lineas';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        CaptionML = ENU = 'Show Internal Information',
                                    ESP = 'Mostrar información interna';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        CaptionML = ENU = 'Log Interaction',
                                    ESP = 'Log interacción';
                        Enabled = LogInteractionEnable;
                    }
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
                    {
                        CaptionML = ENU = 'Show Assembly Components',
                                    ESP = 'Mostrar componentes del ensamblado';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage();
        begin
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
            ImprimirLogos := TRUE;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        SalesSetup.GET;
        ConfCG.GET;

        //CompanyInfo.CALCFIELDS(Picture);
    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
    end;

    var
        Text000: TextConst ENU = 'Salesperson', ESP = 'Vendedor';
        Text001: TextConst ENU = 'Total %1', ESP = 'Total %1';
        Text002: TextConst ENU = 'Total %1 Incl. VAT', ESP = 'Total %1 IVA incl.';
        Text003: TextConst ENU = 'COPY', ESP = 'COPIA';
        Text004: TextConst ENU = 'Sales - Invoice %1', ESP = 'Ventas - Factura %1';
        PageCaptionCap: TextConst ENU = 'Page %1 of %2', ESP = 'Página %1 de %2';
        Text006: TextConst ENU = 'Total %1 Excl. VAT', ESP = 'Total %1 IVA excl.';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record "Customer";
        VATAmountLine: Record "VAT Amount Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Record "Language";
        CurrExchRate: Record "Currency Exchange Rate";
        TempPostedAsmLine: Record "Posted Assembly Line" temporary;
        VATClause: Record "VAT Clause";
        SalesInvCountPrinted: Codeunit "Sales Inv.-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit "SegManagement";
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        PostedShipmentDate: Date;
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        OrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: TextConst ENU = 'VAT Amount Specification in ', ESP = 'Especificar importe IVA en ';
        Text008: TextConst ENU = 'Local Currency', ESP = 'Divisa local';
        VALExchRate: Text[50];
        Text009: TextConst ENU = 'Exchange rate: %1/%2', ESP = 'Tipo cambio: %1/%2';
        CalculatedExchRate: Decimal;
        Text010: TextConst ENU = 'Sales - Prepayment Invoice %1', ESP = 'Ventas - Factura prepago %1';
        OutputNo: Integer;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        TotalPaymentDiscountOnVAT: Decimal;
        Text1100000: TextConst ENU = 'Total %1 Incl. VAT+EC', ESP = 'Total %1 IVA+RE incl.';
        Text1100001: TextConst ENU = 'Total %1 Excl. VAT+EC', ESP = 'Total %1 IVA+RE excl.';
        VATPostingSetup: Record "VAT Posting Setup";
        PaymentMethod: Record "Payment Method";
        TotalGivenAmount: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        PhoneNoCaptionLbl: TextConst ENU = 'Phone No.', ESP = 'Nº teléfono';
        VATRegNoCaptionLbl: TextConst ENU = 'VAT Registration No.', ESP = 'CIF/NIF';
        GiroNoCaptionLbl: TextConst ENU = 'Giro No.', ESP = 'Nº giro postal';
        BankNameCaptionLbl: TextConst ENU = 'Bank', ESP = 'Banco';
        BankAccNoCaptionLbl: TextConst ENU = 'Account No.', ESP = 'Nº cuenta';
        DueDateCaptionLbl: TextConst ENU = 'Due Date', ESP = 'Fecha vencimiento';
        InvoiceNoCaptionLbl: TextConst ENU = 'Invoice No.', ESP = 'Nº factura';
        PostingDateCaptionLbl: TextConst ENU = 'Posting Date', ESP = 'Fecha registro';
        HdrDimsCaptionLbl: TextConst ENU = 'Header Dimensions', ESP = 'Dimensiones cabecera';
        PmtinvfromdebtpaidtoFactCompCaptionLbl: TextConst ENU = 'The payment of this invoice, in order to be released from the debt, has to be paid to the Factoring Company.', ESP = 'Para que se libere de la deuda, el pago de esta factura se debe realizar a la compañía Factoring.';
        UnitPriceCaptionLbl: TextConst ENU = 'Unit Price', ESP = 'Precio venta';
        DiscountCaptionLbl: TextConst ENU = 'Discount %', ESP = '% Descuento';
        AmtCaptionLbl: TextConst ENU = 'Amount', ESP = 'Importe';
        VATClausesCap: TextConst ENU = 'VAT Clause', ESP = 'Cláusula de IVA';
        PostedShpDateCaptionLbl: TextConst ENU = 'Posted Shipment Date', ESP = 'Fecha envío registrada';
        InvDiscAmtCaptionLbl: TextConst ENU = 'Invoice Discount Amount', ESP = 'Importe descuento factura';
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal', ESP = 'Subtotal';
        PmtDiscGivenAmtCaptionLbl: TextConst ENU = 'Payment Disc Given Amount', ESP = 'Importe descuento pago';
        PmtDiscVATCaptionLbl: TextConst ENU = 'Payment Discount on VAT', ESP = 'Descuento P.P. sobre IVA';
        ShpCaptionLbl: TextConst ENU = 'Shipment', ESP = 'Envío';
        LineDimsCaptionLbl: TextConst ENU = 'Line Dimensions', ESP = 'Dimensiones línea';
        VATAmtLineVATCaptionLbl: TextConst ENU = 'VAT %', ESP = '% IVA';
        VATECBaseCaptionLbl: TextConst ENU = 'VAT+EC Base', ESP = 'Base IVA+RE';
        VATAmountCaptionLbl: TextConst ENU = 'VAT Amount', ESP = 'Importe IVA';
        VATAmtSpecCaptionLbl: TextConst ENU = 'VAT Amount Specification', ESP = 'Especificación importe IVA';
        VATIdentCaptionLbl: TextConst ENU = 'VAT Identifier', ESP = 'Identific. IVA';
        InvDiscBaseAmtCaptionLbl: TextConst ENU = 'Invoice Discount Base Amount', ESP = 'Importe base descuento factura';
        LineAmtCaption1Lbl: TextConst ENU = 'Line Amount', ESP = 'Importe línea';
        InvPmtDiscCaptionLbl: TextConst ENU = 'Invoice and Payment Discounts', ESP = 'Descuentos facturas y pagos';
        ECAmtCaptionLbl: TextConst ENU = 'EC Amount', ESP = 'Importe RE';
        ECCaptionLbl: TextConst ENU = 'EC %', ESP = '% RE';
        TotalCaptionLbl: TextConst ENU = 'Total', ESP = 'Total';
        VALVATBaseLCYCaption1Lbl: TextConst ENU = 'VAT Base', ESP = 'Base IVA';
        VATAmtCaptionLbl: TextConst ENU = 'VAT Amount', ESP = 'Importe IVA';
        VATIdentifierCaptionLbl: TextConst ENU = 'VAT Identifier', ESP = 'Identific. IVA';
        ShiptoAddressCaptionLbl: TextConst ENU = 'Ship-to Address', ESP = 'Envío a-Dirección';
        PmtTermsDescCaptionLbl: TextConst ENU = 'Payment Terms', ESP = 'Términos pago';
        ShpMethodDescCaptionLbl: TextConst ENU = 'Shipment Method', ESP = 'Condiciones envío';
        PmtMethodDescCaptionLbl: TextConst ENU = 'Payment Method', ESP = 'Forma pago';
        DocDateCaptionLbl: TextConst ENU = 'Document Date', ESP = 'Fecha emisión documento';
        HomePageCaptionCap: TextConst ENU = 'Home Page', ESP = 'Página Web';
        EmailCaptionLbl: TextConst ENU = 'E-Mail', ESP = 'Correo electrónico';
        CACCaptionLbl: Text;
        CACTxt: TextConst ENU = 'Régimen especial del criterio de caja', ESP = 'Régimen especial del criterio de caja';
        ConfCG: Record "General Ledger Setup";
        CondEnv: Record "Shipment Method";
        TerminosPago: Record "Payment Terms";
        FormaPago: Record "Payment Method";
        RepreVtasComp: Record "Salesperson/Purchaser";
        InfoEmpresa: Record "Company Information";
        Clie: Record "Customer";
        LinImporIVA: Record "VAT Amount Line" temporary;
        ConfRegistroIVA: Record "VAT Posting Setup";
        ContarFactVtaImpresa: Codeunit "Sales Inv.-Printed";
        FormatDire: Codeunit "Format Address";
        DirClie: array[8] of Text[50];
        EnvADir: array[8] of Text[50];
        DirEmpresa: array[8] of Text[50];
        TextNoPedido: Text[30];
        DescriVendedor: Text[30];
        TextoCIF: Text[30];
        DescriRefer: Text[30];
        TotalTexto: Text[50];
        TextoTotIVAIncl: Text[50];
        MasLins: Boolean;
        NoCopias: Integer;
        NoBucles: Integer;
        TextoCopia: Text[30];
        MostrarDireEnvio: Boolean;
        rgConfVenta: Record "Sales & Receivables Setup";
        txOferta1: Text[101];
        txOferta2: Text[50];
        aFechaVto: array[3] of Date;
        aImpVto: array[3] of Decimal;
        rgContCli: Record "Cust. Ledger Entry";
        rgBcoCli: Record "Customer Bank Account";
        numa: Integer;
        numIVA: Integer;
        LinImporIVA1: Record "VAT Amount Line" temporary;
        LinImporIVA2: Record "VAT Amount Line" temporary;
        LinImporIVA3: Record "VAT Amount Line" temporary;
        rgCliente: Record "Customer";
        boOK: Boolean;
        txDesc: Text[153];
        boUltPag: Boolean;
        iNumero: Integer;
        iBucle: Integer;
        iNumPagFac: Integer;
        boSeNumPag: Boolean;
        "txtEmb-PP": Text[30];
        CopiaInterna: Boolean;
        txtPortes: Text[30];
        deImporte: Decimal;
        Duplicado: Text[10];
        txPreciosIVAinc: Text[30];
        boAgruparLin: Boolean;
        eurotot: Decimal;
        ImportePTS: Decimal;
        CodDivisa: Code[20];
        CodDivisa2: Code[10];
        textCCC: Text[30];
        aaa: Text[30];
        aPagos: Text[204];
        RefProvSuNtraFra: Text[200];
        txtBIC: Text[9];
        ImprimirLogos: Boolean;
        vIMPBRUTO: Decimal;
        vDTOPP: Decimal;
        vDTOFAC: Decimal;
        vBASEIMP: array[3] of Decimal;
        vPERCIVA: array[3] of Decimal;
        vIMPIVA: array[3] of Decimal;
        vPERRE: array[3] of Decimal;
        VIMPRE: array[3] of Decimal;
        vTOTAL: Decimal;
        txtCuenta: Text[50];
        rDirFactura: Record "Customer Pmt. Address";
        BoolShowNSerie: Boolean;
        TrackingMng: Codeunit "Item Tracking Management";
        NSerie: Text[1024];
        tmpILE: Record "Item Ledger Entry" temporary;
        BoolShowNSerieAux: Boolean;
        Numero: Label 'BSAB ESBB';
        CuentaTrans: Boolean;
        CustAmount: Decimal;
        InvDiscAmount: Decimal;
        PmtDiscAmount: Decimal;
        currency: Record "Currency";
        txtEmbPP: Text[30];
        txtEmbPPAux: Boolean;
        shiplines: Record "Sales Invoice Line";

    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    procedure FindPostedShipmentDate(): Date;
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        IF "Sales Invoice Line"."Shipment No." <> '' THEN
            IF SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.") THEN
                EXIT(SalesShipmentHeader."Posting Date");

        IF "Sales Invoice Header"."Order No." = '' THEN
            EXIT("Sales Invoice Header"."Posting Date");

        CASE "Sales Invoice Line".Type OF
            "Sales Invoice Line".Type::Item:
                GenerateBufferFromValueEntry("Sales Invoice Line");
            "Sales Invoice Line".Type::"G/L Account", "Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)", "Sales Invoice Line".Type::"Fixed Asset":
                GenerateBufferFromShipment("Sales Invoice Line");
            "Sales Invoice Line".Type::" ":
                EXIT(0D);
        END;

        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer2 := SalesShipmentBuffer;
            IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
                SalesShipmentBuffer.GET(
                  SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                SalesShipmentBuffer.DELETE;
                EXIT(SalesShipmentBuffer2."Posting Date");
            END;
            SalesShipmentBuffer.CALCSUMS(Quantity);
            IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
                SalesShipmentBuffer.DELETEALL;
                EXIT("Sales Invoice Header"."Posting Date");
            END;
        END ELSE
            EXIT("Sales Invoice Header"."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Invoice Line");
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item LEdger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FIND('-') THEN
            REPEAT
                IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                    IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN
                        Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                    ELSE
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      SalesInvoiceLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
                END;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            UNTIL (ValueEntry.NEXT = 0) OR (TotalQuantity = 0);
    end;

    procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line");
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.", '..%1', "Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-') THEN
            REPEAT
                SalesInvoiceLine2.SETRANGE("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SETRANGE("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                IF SalesInvoiceLine2.FIND('-') THEN
                    REPEAT
                        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                    UNTIL SalesInvoiceLine2.NEXT = 0;
            UNTIL SalesInvoiceHeader.NEXT = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.", "Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity, '<>%1', 0);

        IF SalesShipmentLine.FIND('-') THEN
            REPEAT
                IF "Sales Invoice Header"."Get Shipment Used" THEN
                    CorrectShipment(SalesShipmentLine);
                IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
                ELSE BEGIN
                    IF ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) THEN
                        SalesShipmentLine.Quantity := TotalQuantity;
                    Quantity :=
                      SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                    IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN BEGIN
                        AddBufferEntry(
                          SalesInvoiceLine,
                          Quantity,
                          SalesShipmentHeader."Posting Date");
                    END;
                END;
            UNTIL (SalesShipmentLine.NEXT = 0) OR (TotalQuantity = 0);
    end;

    procedure CorrectShipment(var SalesShipmentLine: Record "Sales Shipment Line");
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
            REPEAT
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            UNTIL SalesInvoiceLine.NEXT = 0;
    end;

    procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date);
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.MODIFY;
            EXIT;
        END;

        SalesShipmentBuffer."Document No." := SalesInvoiceLine."Document No.";
        SalesShipmentBuffer."Line No." := SalesInvoiceLine."Line No.";
        SalesShipmentBuffer."Entry No." := NextEntryNo;
        SalesShipmentBuffer.Type := SalesInvoiceLine.Type;
        SalesShipmentBuffer."No." := SalesInvoiceLine."No.";
        SalesShipmentBuffer.Quantity := QtyOnShipment;
        SalesShipmentBuffer."Posting Date" := PostingDate;
        SalesShipmentBuffer.INSERT;
        NextEntryNo := NextEntryNo + 1
    end;

    local procedure DocumentCaption(): Text[250];
    begin
        IF "Sales Invoice Header"."Prepayment Invoice" THEN
            EXIT(Text010);
        EXIT(Text004);
    end;

    procedure GetCarteraInvoice(): Boolean;
    var
        CustLedgEntry: Record "Cust. Ledger Entry";
    begin
        CustLedgEntry.SETCURRENTKEY("Document No.", "Document Type", "Customer No.");
        CustLedgEntry.SETRANGE("Document Type", CustLedgEntry."Document Type"::Invoice);
        CustLedgEntry.SETRANGE("Document No.", "Sales Invoice Header"."No.");
        CustLedgEntry.SETRANGE("Customer No.", "Sales Invoice Header"."Bill-to Customer No.");
        CustLedgEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        IF CustLedgEntry.FIND('-') THEN
            IF CustLedgEntry."Document Situation" = CustLedgEntry."Document Situation"::" " THEN
                EXIT(FALSE)
            ELSE
                EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    END;

    local procedure ShowCashAccountingCriteria();
    var
        VATPostingSetup: Record "VAT Posting Setup";
        SalesInvoiceLine2: Record "Sales Invoice Line";
    begin
        GLSetup.GET;
        IF NOT GLSetup."Unrealized VAT" THEN
            EXIT;
        CACCaptionLbl := '';
        SalesInvoiceLine2.SETRANGE("Document No.", "Sales Invoice Header"."No.");
        IF SalesInvoiceLine2.FINDSET THEN
            REPEAT
                IF VATPostingSetup.GET("Sales Invoice Header"."VAT Bus. Posting Group", SalesInvoiceLine2."VAT Prod. Posting Group") THEN
                    IF VATPostingSetup."Unrealized VAT Type" <> VATPostingSetup."Unrealized VAT Type"::" " THEN
                        CACCaptionLbl := CACTxt;
            UNTIL (SalesInvoiceLine2.NEXT = 0) OR (CACCaptionLbl <> '');
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; DisplayAsmInfo: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    procedure CollectAsmInformation();
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        PostedAsmHeader: Record "Posted Assembly Header";
        PostedAsmLine: Record "Posted Assembly Line";
        SalesShipmentLine: Record "Sales Shipment Line";
    begin
        TempPostedAsmLine.DELETEALL;
        IF "Sales Invoice Line".Type <> "Sales Invoice Line".Type::Item THEN
            EXIT;
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        ValueEntry.SETRANGE("Document Type", ValueEntry."Document Type"::"Sales Invoice");
        ValueEntry.SETRANGE("Document Line No.", "Sales Invoice Line"."Line No.");
        IF NOT ValueEntry.FINDSET THEN
            EXIT;
        REPEAT
            IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                IF ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" THEN BEGIN
                    SalesShipmentLine.GET(ItemLedgerEntry."Document No.", ItemLedgerEntry."Document Line No.");
                    IF SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader) THEN BEGIN
                        PostedAsmLine.SETRANGE("Document No.", PostedAsmHeader."No.");
                        IF PostedAsmLine.FINDSET THEN
                            REPEAT
                                TreatAsmLineBuffer(PostedAsmLine);
                            UNTIL PostedAsmLine.NEXT = 0;
                    END;
                END;
            END;
        UNTIL ValueEntry.NEXT = 0;
    end;

    procedure TreatAsmLineBuffer(PostedAsmLine: Record "Posted Assembly Line");
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type, PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.", PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code", PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description, PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code", PostedAsmLine."Unit of Measure Code");
        IF TempPostedAsmLine.FINDFIRST THEN BEGIN
            TempPostedAsmLine.Quantity += PostedAsmLine.Quantity;
            TempPostedAsmLine.MODIFY;
        END ELSE BEGIN
            CLEAR(TempPostedAsmLine);
            TempPostedAsmLine := PostedAsmLine;
            TempPostedAsmLine.INSERT;
        END;
    end;

    procedure GetUOMText(UOMCode: Code[10]): Text[10];
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
            EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent(): Text[10];
    begin
        EXIT(PADSTR('', 2, ' '));
    end;

    procedure funTraerDomicilioCobro() txtCuenta: Text[50];
    var
        recEmpresa: Record "Company Information";
        recFormaPago: Record "Payment Method";
    begin
        ///////////////////////////////////////// FV008
        txtCuenta := '';
        IF recFormaPago.GET("Sales Invoice Header"."Payment Method Code") THEN BEGIN
            IF (recFormaPago."Create Bills") AND (recFormaPago."Bill Type" = recFormaPago."Bill Type"::Transfer) THEN BEGIN
                recEmpresa.GET;
                txtCuenta := recEmpresa."CCC Bank No." + '.' + recEmpresa."CCC Bank Branch No." + '.' + recEmpresa."CCC Control Digits" + '.';
                txtCuenta := txtCuenta + recEmpresa."CCC Bank Account No.";
                txtCuenta := 'IBAN ES91 0081 0114 4200 0103 3009';
            END;
        END;
        EXIT(txtCuenta);
        /////////////////////////////////////////
    end;

    procedure GetImporteBruto(sheader: Record "Sales Invoice Header") resultado: Decimal;
    var
        sline: Record "Sales Invoice Line";
    begin
        resultado := 0;
        CustAmount := 0;
        InvDiscAmount := 0;
        PmtDiscAmount := 0;

        sline.RESET;
        //CVP ini 2017-01-04
        //Canviem la manera de calcular l'import brut ja que no surt del tot correcte per cèntims.
        //sline.SETRANGE(sline."Document No.",sheader."No.");
        //IF sline.FINDSET THEN REPEAT
        //  resultado+=ROUND(sline."Unit Price"*sline.Quantity,0.01,'=');
        //UNTIL sline.NEXT = 0;
        IF sheader."Currency Code" = '' THEN
            currency.InitRoundingPrecision
        ELSE
            currency.GET(sheader."Currency Code");
        sline.SETRANGE(sline."Document No.", sheader."No.");
        IF sline.FIND('-') THEN
            REPEAT
                CustAmount := CustAmount + sline.Amount;
                IF sheader."Prices Including VAT" THEN BEGIN
                    InvDiscAmount := InvDiscAmount + sline."Inv. Discount Amount" /
                      (1 + (sline."VAT %" + sline."EC %") / 100);
                    PmtDiscAmount := PmtDiscAmount /
                      (1 + (sline."VAT %" + sline."EC %") / 100)
                END ELSE BEGIN
                    InvDiscAmount := InvDiscAmount + sline."Inv. Discount Amount";
                END;
            UNTIL sline.NEXT = 0;
        InvDiscAmount := ROUND(InvDiscAmount, currency."Amount Rounding Precision");

        resultado := CustAmount + InvDiscAmount + PmtDiscAmount;
        //CVP fi
    end;

    procedure GetImporteDtoPP(sheader: Record "Sales Invoice Header") resultado: Decimal;
    var
        sline: Record "Sales Invoice Line";
    begin
        resultado := 0;
        sline.RESET;
        sline.SETRANGE(sline."Document No.", sheader."No.");
        IF sline.FINDSET THEN
            REPEAT
            // resultado+=sline."Pmt. Disc. Given Amount";
            UNTIL sline.NEXT = 0;
    end;

    procedure GetImporteDtoFAC(sheader: Record "Sales Invoice Header") resultado: Decimal;
    var
        sline: Record "Sales Invoice Line";
    begin
        resultado := 0;
        sline.RESET;
        sline.SETRANGE(sline."Document No.", sheader."No.");
        IF sline.FINDSET THEN
            REPEAT
                resultado += sline."Inv. Discount Amount";
            UNTIL sline.NEXT = 0;
    end;

    procedure GetImporteTotal(sheader: Record "Sales Invoice Header") resultado: Decimal;
    var
        sline: Record "Sales Invoice Line";
    begin
        resultado := 0;
        sline.RESET;
        sline.SETRANGE(sline."Document No.", sheader."No.");
        IF sline.FINDSET THEN
            REPEAT
                resultado += sline."Amount Including VAT";
            UNTIL sline.NEXT = 0;
    end;

    procedure AsignarVariablesVAT(sheader: Record "Sales Invoice Header"): Boolean;
    var
        sline: Record "Sales Invoice Line";
        totalVATlines: Integer;
    begin
        VATAmountLine.DELETEALL;
        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.DELETEALL;
        FirstValueEntryNo := 0;

        //CVP 2016-12-12 ini
        //inicialitzem les variables per tal de no arrossegar dades
        i := 1;
        REPEAT
            vBASEIMP[i] := 0;
            vPERCIVA[i] := 0;
            vIMPIVA[i] := 0;
            vPERRE[i] := 0;
            VIMPRE[i] := 0;
            i += 1;
        UNTIL i > 3;
        //CVP fi

        sline.RESET;
        sline.SETRANGE(sline."Document No.", sheader."No.");
        IF sline.FINDSET THEN
            REPEAT
            BEGIN
                PostedShipmentDate := 0D;
                IF sline.Quantity <> 0 THEN
                    PostedShipmentDate := FindPostedShipmentDate;

                IF (sline.Type = sline.Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                    sline."No." := '';

                IF VATPostingSetup.GET(sline."VAT Bus. Posting Group", sline."VAT Prod. Posting Group") THEN BEGIN
                    VATAmountLine.INIT;
                    VATAmountLine."VAT Identifier" := sline."VAT Identifier";
                    VATAmountLine."VAT Calculation Type" := sline."VAT Calculation Type";
                    VATAmountLine."Tax Group Code" := sline."Tax Group Code";
                    VATAmountLine."VAT %" := VATPostingSetup."VAT %";
                    VATAmountLine."EC %" := VATPostingSetup."EC %";
                    // VATAmountLine."VAT+EC Base" := Amount;
                    // VATAmountLine."Amount Including VAT+EC" := "Amount Including VAT";
                    VATAmountLine."Line Amount" := sline."Line Amount";
                    // VATAmountLine."Pmt. Disc. Given Amount" := "Pmt. Disc. Given Amount";
                    IF sline."Allow Invoice Disc." THEN
                        VATAmountLine."Inv. Disc. Base Amount" := sline."Line Amount";
                    VATAmountLine."Invoice Discount Amount" := sline."Inv. Discount Amount";
                    VATAmountLine.SetCurrencyCode(sheader."Currency Code");
                    VATAmountLine."VAT Difference" := sline."VAT Difference";
                    VATAmountLine."EC Difference" := sline."EC Difference";
                    IF sheader."Prices Including VAT" THEN
                        VATAmountLine."Prices Including VAT" := TRUE;
                    VATAmountLine."VAT Clause Code" := sline."VAT Clause Code";
                    VATAmountLine.InsertLine;
                END;
            END;
            UNTIL sline.NEXT = 0;

        //Asignar Variables Dim(3)
        /*NameDataTypeSubtypeLength
        vBASEIMPDecimal
        vPERCIVADecimal
        vIMPIVADecimal
        vPERREDecimal
        VIMPREInteger */

        totalVATlines := VATAmountLine.COUNT;

        //IF totalVATlines = 0 THEN CurrReport.QUIT;

        i := 1;
        IF VATAmountLine.FINDFIRST THEN
            REPEAT
                IF i <= 3 THEN BEGIN
                    vBASEIMP[i] := VATAmountLine."VAT Base";
                    vPERCIVA[i] := VATAmountLine."VAT %";
                    vIMPIVA[i] := VATAmountLine."VAT Amount";
                    vPERRE[i] := VATAmountLine."EC %";
                    VIMPRE[i] := VATAmountLine."EC Amount";



                END;
                i += 1;
            UNTIL VATAmountLine.NEXT = 0;

    end;
}

