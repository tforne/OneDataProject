report 90070 "Formato Factura01"
{
    // version NAVW17.00,NAVES7.00

    // <changelog>
    //   <add id="ES0001" dev="VGARCA" date="2004-08-27" area="EQUIVCHRG"  request="ES-START-40"
    //     releaseversion="ES4.00">Equivalence Charge</add>
    //   <add id="ES0002" dev="VGARCA" date="2004-08-27" area="PAYDISC"  request="ES-START-40"
    //     releaseversion="ES4.00">Payment Discount</add>
    //   <add id="ES0003" dev="VGARCA" date="2004-08-27" area="VATECCALC"  request="ES-START-40"
    //     releaseversion="ES4.00">VAT+EC % calculation</add>
    //   <add id="ES0004" dev="VGARCA" date="2004-08-27" area="PAYTERMS"  request="ES-START-40"
    //     releaseversion="ES4.00">Payment Terms &amp; Payment Methods</add>
    //   <add id="ES0005" dev="VGARCA" date="2004-08-27" area="CARTERA"  request="ES-START-40"
    //     releaseversion="ES4.00">Cartera Add-On (Spanish)</add>
    //   <change id="ES0006" dev="VGARCA" date="2005-10-21" area="PAYTERMS" feature="ES-START-4.00.02"
    //     baseversion="ES4.00.A" releaseversion="ES4.00.02">Payment Terms &amp; Payment Methods</change>
    //   <change id="ES0007" dev="AUGMENTUM" date="2008-06-13" area="PAYTERMS" feature="PSCORS1140"
    //     baseversion="ES4.00.02" releaseversion="ES6.00">Report transformation</change>
    // </changelog>
    DefaultLayout = RDLC;
    RDLCLayout = './Formato Factura01.rdlc';

    CaptionML = ENU='Sales - Invoice',
                ESP='Ventas - Factura';
    Permissions = TableData 7190=rimd;
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem(DataItem5581;Table112)
        {
            DataItemTableView = SORTING(No.);
            RequestFilterFields = "No.","Sell-to Customer No.","No. Printed";
            ReqFilterHeading = 'Posted Sales Invoice';
            column(No_SalesInvoiceHeader;"No.")
            {
            }
            column(PaymentTermsDescription;PaymentTerms.Description)
            {
            }
            column(ShipmentMethodDescription;ShipmentMethod.Description)
            {
            }
            column(PaymentMethodDescription;PaymentMethod.Description)
            {
            }
            column(PmtTermsDescCaption;PmtTermsDescCaptionLbl)
            {
            }
            column(ShpMethodDescCaption;ShpMethodDescCaptionLbl)
            {
            }
            column(PmtMethodDescCaption;PmtMethodDescCaptionLbl)
            {
            }
            column(DocDateCaption;DocDateCaptionLbl)
            {
            }
            column(HomePageCaption;HomePageCaptionLbl)
            {
            }
            column(EmailCaption;EmailCaptionLbl)
            {
            }
            column(FaxNoCaption;FaxNoCaptionLbl)
            {
            }
            column(PagaderaCaption;PagaderaCaptionLbl)
            {
            }
            column(VencimientoCaption;VencimientoCaptionLbl)
            {
            }
            column(FinCaption;FinCaptionLbl)
            {
            }
            column(CustBankName;g_recBcoClie.Name)
            {
            }
            column(CustBankCCC;g_recBcoClie."CCC Bank No." + '-' + g_recBcoClie."CCC Bank Branch No." + '-' + g_recBcoClie."CCC Control Digits" + '-' + g_recBcoClie."CCC Bank Account No.")
            {
            }
            column(FechaVto1;FechaVto[1])
            {
            }
            column(FechaVto2;FechaVto[2])
            {
            }
            column(FechaVto3;FechaVto[3])
            {
            }
            column(FechaVto4;FechaVto[4])
            {
            }
            column(ImporteVto1;ImporteVto[1])
            {
            }
            column(ImporteVto2;ImporteVto[2])
            {
            }
            column(ImporteVto3;ImporteVto[3])
            {
            }
            column(ImporteVto4;ImporteVto[4])
            {
            }
            column(termfinanc1;termfinanc[1])
            {
            }
            column(termfinanc2;termfinanc[2])
            {
            }
            column(termfinanc3;termfinanc[3])
            {
            }
            column(termfinanc4;termfinanc[4])
            {
            }
            column(tottermini1;tottermini[1])
            {
            }
            column(tottermini2;tottermini[2])
            {
            }
            column(tottermini3;tottermini[3])
            {
            }
            column(tottermini4;tottermini[4])
            {
            }
            column(TotalCaptionCap;TotalCaptionLbl)
            {
            }
            dataitem(CopyLoop;Table2000000026)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;Table2000000026)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number=CONST(1));
                    column(CompanyInfo2Picture;CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo1Picture;CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo3Picture;CompanyInfo3.Picture)
                    {
                    }
                    column(DocumentCaption;STRSUBSTNO(DocumentCaption,CopyText))
                    {
                    }
                    column(CustAddr1;CustAddr[1])
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(CustAddr2;CustAddr[2])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(CustAddr3;CustAddr[3])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(CustAddr4;CustAddr[4])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(CustAddr5;CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6;CustAddr[6])
                    {
                    }
                    column(CompanyInfoVATRegistrationNo;CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoHomePage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoGiroNo;CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName;CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo;CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesInvHdr;"Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostingDate_SalesInvHdr;FORMAT("Sales Invoice Header"."Posting Date"))
                    {
                    }
                    column(VATNoText;VATNoText)
                    {
                    }
                    column(VATRegNo_SalesInvHeader;"Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHeader;FORMAT("Sales Invoice Header"."Due Date"))
                    {
                    }
                    column(SalesPersonText;SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(No_SalesInvoiceHeader1;"Sales Invoice Header"."No.")
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YourReference_SalesInvHdr;"Sales Invoice Header"."Your Reference")
                    {
                    }
                    column(OrderNoText;OrderNoText)
                    {
                    }
                    column(CustAddr7;CustAddr[7])
                    {
                    }
                    column(CustAddr8;CustAddr[8])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(DocDate_SalesInvoiceHdr;FORMAT("Sales Invoice Header"."Document Date",0,4))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdr;"Sales Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo;FORMAT("Sales Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(PageCaption;STRSUBSTNO(Text005,''))
                    {
                    }
                    column(PhoneNoCaption;PhoneNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption;VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption;GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption;BankNameCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption;BankAccNoCaptionLbl)
                    {
                    }
                    column(DueDateCaption;DueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption;InvoiceNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption;PostingDateCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesInvHdrCaption;"Sales Invoice Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdrCaption;"Sales Invoice Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(BultosCaption;BultosCaptionLbl)
                    {
                    }
                    column(PesoCaption;PesoCaptionLbl)
                    {
                    }
                    column(totalbultos;totalbultos)
                    {
                    }
                    column(totalpeso;totalpeso)
                    {
                    }
                    column(AgenciaCaption;AgenciaCaptionLbl)
                    {
                    }
                    column(Name_Trasportista;transportista.Name)
                    {
                    }
                    column(CompanyInfoFaxNo;CompanyInfo."Fax No.")
                    {
                    }
                    column(ReferenciaCaption1;ReferenciaCaptionLbl)
                    {
                    }
                    column(ConceptoCaption;ConceptoCaptionLbl)
                    {
                    }
                    column(CantidadCaption;CantidadCaptionLbl)
                    {
                    }
                    column(LongitudCaption;LongitudCaptionLbl)
                    {
                    }
                    column(PrecioCaption;PrecioCaptionLbl)
                    {
                    }
                    column(DescuentoCaption;DescuentoCaptionLbl)
                    {
                    }
                    column(ImporteCaption;ImporteCaptionLbl)
                    {
                    }
                    column(PesosCaption;PesosCaptionLbl)
                    {
                    }
                    dataitem(DimensionLoop1;Table2000000026)
                    {
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=FILTER(1..));
                        column(DimText;DimText)
                        {
                        }
                        column(Number_DimensionLoop1;Number)
                        {
                        }
                        column(HdrDimsCaption;HdrDimsCaptionLbl)
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
                                DimText := STRSUBSTNO('%1 %2',DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code")
                              ELSE
                                DimText :=
                                  STRSUBSTNO(
                                    '%1, %2 %3',DimText,
                                    DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code");
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
                    dataitem(DataItem1570;Table113)
                    {
                        DataItemLink = Document No.=FIELD(No.);
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING(Document No.,Line No.);
                        column(GetCarteraInvoice;GetCarteraInvoice)
                        {
                        }
                        column(LineAmt_SalesInvoiceLine;"Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Description_SalesInvLine;Description)
                        {
                        }
                        column(Description2_SalesInvLine;"Description 2")
                        {
                        }
                        column(No_SalesInvoiceLine;"No.")
                        {
                        }
                        column(Quantity_SalesInvoiceLine;Quantity)
                        {
                        }
                        column(UOM_SalesInvoiceLine;"Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesInvLine;"Unit Price")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(LineDisc_SalesInvoiceLine;"Line Discount %")
                        {
                        }
                        column(VATIdent_SalesInvLine;"VAT Identifier")
                        {
                        }
                        column(PostedShipmentDate;FORMAT(PostedShipmentDate))
                        {
                        }
                        column(Type_SalesInvoiceLine;FORMAT("Sales Invoice Line".Type))
                        {
                        }
                        column(Type2_SalesInvoiceLine;FORMAT(Type,0,2))
                        {
                        }
                        column(InvDiscountAmount;-"Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal;TotalSubTotal)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvoiceDiscountAmount;TotalInvoiceDiscountAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmount;TotalAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalGivenAmount;TotalGivenAmount)
                        {
                        }
                        column(SalesInvoiceLineAmount;Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmountIncludingVATAmount;"Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Amount_SalesInvoiceLineIncludingVAT;"Amount Including VAT")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText;VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText;TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText;TotalInclVATText)
                        {
                        }
                        column(TotalAmountInclVAT;TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountVAT;TotalAmountVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr;"Sales Invoice Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscountOnVAT;TotalPaymentDiscountOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATCalcType;VATAmountLine."VAT Calculation Type")
                        {
                        }
                        column(LineNo_SalesInvoiceLine;"Line No.")
                        {
                        }
                        column(PmtinvfromdebtpaidtoFactCompCaption;PmtinvfromdebtpaidtoFactCompCaptionLbl)
                        {
                        }
                        column(UnitPriceCaption;UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscountCaption;DiscountCaptionLbl)
                        {
                        }
                        column(AmtCaption;AmtCaptionLbl)
                        {
                        }
                        column(PostedShpDateCaption;PostedShpDateCaptionLbl)
                        {
                        }
                        column(InvDiscAmtCaption;InvDiscAmtCaptionLbl)
                        {
                        }
                        column(SubtotalCaption;SubtotalCaptionLbl)
                        {
                        }
                        column(PmtDiscGivenAmtCaption;PmtDiscGivenAmtCaptionLbl)
                        {
                        }
                        column(PmtDiscVATCaption;PmtDiscVATCaptionLbl)
                        {
                        }
                        column(Description_SalesInvLineCaption;FIELDCAPTION(Description))
                        {
                        }
                        column(No_SalesInvoiceLineCaption;FIELDCAPTION("No."))
                        {
                        }
                        column(Quantity_SalesInvoiceLineCaption;FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_SalesInvoiceLineCaption;FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATIdent_SalesInvLineCaption;FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        column(refer;refer)
                        {
                        }
                        column(ReferenciaCaption;ReferenciaCaptionLbl)
                        {
                        }
                        column(DocumentoExterno;SalesSHeader."External Document No.")
                        {
                        }
                        column(Imprimir;Imprimir)
                        {
                        }
                        column(Pesos;Pesos)
                        {
                        }
                        dataitem("Sales Shipment Buffer";Table2000000026)
                        {
                            DataItemTableView = SORTING(Number);
                            column(PostingDate_SalesShipmentBuffer;FORMAT(SalesShipmentBuffer."Posting Date"))
                            {
                            }
                            column(Quantity_SalesShipmentBuffer;SalesShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0:5;
                            }
                            column(ShpCaption;ShpCaptionLbl)
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
                                SalesShipmentBuffer.SETRANGE("Document No.","Sales Invoice Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE("Line No.","Sales Invoice Line"."Line No.");

                                SETRANGE(Number,1,SalesShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2;Table2000000026)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number=FILTER(1..));
                            column(DimText1;DimText)
                            {
                            }
                            column(LineDimsCaption;LineDimsCaptionLbl)
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
                                    DimText := STRSUBSTNO('%1 %2',DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code")
                                  ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3',DimText,
                                        DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code");
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

                                DimSetEntry2.SETRANGE("Dimension Set ID","Sales Invoice Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop;Table2000000026)
                        {
                            DataItemTableView = SORTING(Number);
                            column(TempPostedAsmLineUOMCode;GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                                DecimalPlaces = 0:5;
                            }
                            column(TempPostedAsmLineQuantity;TempPostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0:5;
                            }
                            column(TempPostedAsmLineVariantCode;BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                                DecimalPlaces = 0:5;
                            }
                            column(TempPostedAsmLineDescrip;BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(TempPostedAsmLineNo;BlanksForIndent + TempPostedAsmLine."No.")
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
                                SETRANGE(Number,1,TempPostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            PostedShipmentDate := 0D;
                            Imprimir := FALSE;
                            IF Quantity <> 0 THEN
                              PostedShipmentDate := FindPostedShipmentDate;

                            //IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                            //  "No." := '';

                            IF VATPostingSetup.GET("Sales Invoice Line"."VAT Bus. Posting Group","Sales Invoice Line"."VAT Prod. Posting Group") THEN BEGIN
                              VATAmountLine.INIT;
                              VATAmountLine."VAT Identifier" := "VAT Identifier";
                              VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                              VATAmountLine."Tax Group Code" := "Tax Group Code";
                              VATAmountLine."VAT %" := VATPostingSetup."VAT %";
                              VATAmountLine."EC %" := VATPostingSetup."EC %";
                              VATAmountLine."VAT+EC Base" := "Sales Invoice Line".Amount;
                              VATAmountLine."Amount Including VAT+EC" := "Sales Invoice Line"."Amount Including VAT";
                              //CVP 2016-07-21 ini
                              //es treuen els ports
                              IF  (Type <> Type::"G/L Account") THEN BEGIN
                                VATAmountLine."Line Amount" := "Line Amount";
                              END;
                              VATAmountLine."Pmt. Disc. Given Amount" := "Pmt. Disc. Given Amount";
                              //CVP 2016-07-21 ini
                              //es treuen els ports
                              //IF "Allow Invoice Disc."  THEN
                              //IF "Allow Invoice Disc." AND  (Type <> Type::"G/L Account") THEN // CBS: Se comenta para que tenga encuenta simpre todas las lineas.
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                              //CVP fi
                              VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                              VATAmountLine.SetCurrencyCode("Sales Invoice Header"."Currency Code");
                              VATAmountLine."VAT Difference" := "VAT Difference";
                              VATAmountLine."EC Difference" := "EC Difference";
                              IF "Sales Invoice Header"."Prices Including VAT" THEN
                                VATAmountLine."Prices Including VAT" := TRUE;
                              VATAmountLine.InsertLine;

                              //CVP 2016-07-21 ini
                              //Si son ports no han de sortir en el total
                              IF  (Type <> Type::"G/L Account") OR  (Type = Type::"G/L Account") //AND (ConfCont."Cta. Portes" <> "No.")
                                THEN BEGIN
                                TotalSubTotal += "Line Amount";
                                TotalInvoiceDiscountAmount -= "Inv. Discount Amount";
                                TotalAmount += Amount;
                                TotalAmountVAT += "Amount Including VAT" - Amount;
                                TotalAmountInclVAT += "Amount Including VAT";
                                //es0007.begin
                                TotalGivenAmount-= "Pmt. Disc. Given Amount";
                                TotalPaymentDiscountOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Pmt. Disc. Given Amount" - "Amount Including VAT");
                                //es0007.end
                              END;
                              //CVP fi
                              //CVP 2016-07-22 ini
                              //Calculem el total de la factura
                              TotalFactura += "Line Amount";
                              //CVP fi

                              //CVP 2016-07-22 ini
                              //incorporem el total dels ports
                              ConfCont.GET;
                              IF  (Type = Type::"G/L Account")  THEN BEGIN
                                ImpPortes :=  ImpPortes + (Quantity * "Unit Price");
                                Imprimir := TRUE;
                              END;
                            END;

                            refer := "No.";
                            IF Type=2 THEN BEGIN
                              //CVP 2017-04-17 ini
                              //posem els pesos en el report
                              //IF NOT arti.GET("No.") THEN
                              //  arti.INIT;
                              Pesos := 0;
                              IF NOT arti.GET("No.") THEN
                                arti.INIT;
                              Pesos := arti."Net Weight" * "Sales Invoice Line".Quantity;
                              //refer := arti.Referencia;
                            END;

                            //CVP 2016-08-25 ini
                            //Falta posa en cada línia, el número de comanda a la qual pertany.
                            SalesSHeader."External Document No." := '';
                            IF SalesILineAux.NEXT <> 0 THEN;

                            IF "Sales Invoice Line".Type =2 THEN BEGIN
                              IF "Sales Invoice Line".Quantity = 0 THEN BEGIN
                                IF "Sales Invoice Line"."Shipment No." <> '' THEN BEGIN
                                  IF NOT SalesSHeader.GET("Sales Invoice Line"."Shipment No.") THEN BEGIN
                                    SalesSHeader.INIT;
                                    SalesSHeader."External Document No." := '';
                                  END;
                                END
                                ELSE BEGIN
                                  IF NOT SalesSHeader.GET(SalesILineAux."Shipment No.") THEN BEGIN
                                    SalesSHeader.INIT;
                                    SalesSHeader."External Document No." := '';
                                  END;
                                END;
                              END;
                            END
                            //END;
                            //CVP fi
                            //CVP 2017-06-14 ini
                            //Falta posa en cada línia de tipus '', el número de comanda a la qual pertany.
                            ELSE BEGIN
                              IF "Sales Invoice Line".Type =0 THEN BEGIN
                                IF "Sales Invoice Line".Quantity = 0 THEN BEGIN
                                  IF "Sales Invoice Line"."Shipment No." <> '' THEN BEGIN
                                    IF NOT SalesSHeader.GET("Sales Invoice Line"."Shipment No.") THEN BEGIN
                                      SalesSHeader.INIT;
                                      SalesSHeader."External Document No." := '';
                                    END;
                                  END
                                  ELSE BEGIN
                                    IF NOT SalesSHeader.GET(SalesILineAux."Shipment No.") THEN BEGIN
                                      SalesSHeader.INIT;
                                      SalesSHeader."External Document No." := '';
                                    END;
                                  END;
                                END;
                              END;
                            END;
                            //CVP fi
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
                            SETRANGE("Line No.",0,"Line No.");
                            CurrReport.CREATETOTALS("Line Amount",Amount,"Amount Including VAT","Inv. Discount Amount","Pmt. Disc. Given Amount");
                            //CVP 20016-07-16 ini
                            //incorporem el total dels ports
                            //currreport.createtotals(ImpPortes);
                            //CVP fi

                            //CVP 2016-08-24 ini
                            //Taula auxiliar per recollir el número de document extern
                            SalesILineAux.COPYFILTERS("Sales Invoice Line");
                            IF SalesILineAux.FINDFIRST THEN;
                            //CVP fi
                        end;
                    }
                    dataitem(VATCounter;Table2000000026)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmountLineVATBase;VATAmountLine."VAT+EC Base")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVATAmount;VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineLineAmount;VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt;VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscountAmt;VATAmountLine."Invoice Discount Amount" + VATAmountLine."Pmt. Disc. Given Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineECAmount;VATAmountLine."EC Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT;VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:6;
                        }
                        column(VATAmtLineVATIdentifier;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountLineEC;VATAmountLine."EC %")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATCaption;VATAmtLineVATCaptionLbl)
                        {
                        }
                        column(VATECBaseCaption;VATECBaseCaptionLbl)
                        {
                        }
                        column(VATAmountCaption;VATAmountCaptionLbl)
                        {
                        }
                        column(VATAmtSpecCaption;VATAmtSpecCaptionLbl)
                        {
                        }
                        column(VATIdentCaption;VATIdentCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption;InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption1;LineAmtCaption1Lbl)
                        {
                        }
                        column(InvPmtDiscCaption;InvPmtDiscCaptionLbl)
                        {
                        }
                        column(ECAmtCaption;ECAmtCaptionLbl)
                        {
                        }
                        column(ECCaption;ECCaptionLbl)
                        {
                        }
                        column(TotalCaption;TotalCaptionLbl)
                        {
                        }
                        column(ImpPortes;ImpPortes)
                        {
                        }
                        column(TotalFactura;TotalFactura)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            //es0007.begin
                            IF VATAmountLine."VAT Amount" = 0 THEN
                              VATAmountLine."VAT %" := 0;
                            IF VATAmountLine."EC Amount" = 0 THEN
                              VATAmountLine."EC %" := 0;
                            //es0007.end
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount",VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount",VATAmountLine."VAT+EC Base",VATAmountLine."VAT Amount",
                              VATAmountLine."EC Amount",VATAmountLine."Pmt. Disc. Given Amount");
                        end;
                    }
                    dataitem(VatCounterLCY;Table2000000026)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader;VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate;VALExchRate)
                        {
                        }
                        column(VALVATBaseLCY;VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY;VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT1;VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:5;
                        }
                        column(VATAmtLineVATIdentifier1;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VALVATBaseLCYCaption1;VALVATBaseLCYCaption1Lbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);

                            VALVATBaseLCY := ROUND(VATAmountLine."VAT+EC Base" / "Sales Invoice Header"."Currency Factor");
                            VALVATAmountLCY :=ROUND(VATAmountLine."VAT Amount" / "Sales Invoice Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Invoice Header"."Currency Code" = '')
                            THEN
                              CurrReport.BREAK;

                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY,VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                              VALSpecLCYHeader := Text007 + Text008
                            ELSE
                              VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Invoice Header"."Posting Date","Sales Invoice Header"."Currency Code",1);
                            CalculatedExchRate := ROUND(1 / "Sales Invoice Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount",0.000001);
                            VALExchRate := STRSUBSTNO(Text009,CalculatedExchRate,CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total;Table2000000026)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                    }
                    dataitem(Total2;Table2000000026)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                        column(SelltoCustNo_SalesInvHdr;"Sales Invoice Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1;ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2;ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3;ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4;ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5;ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6;ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7;ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8;ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddressCaption;ShiptoAddressCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_SalesInvHdrCaption;"Sales Invoice Header".FIELDCAPTION("Sell-to Customer No."))
                        {
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
                    IF Number > 1 THEN BEGIN
                      CopyText := Text003;
                      OutputNo += 1;
                    END;
                    CurrReport.PAGENO := 1;

                    TotalSubTotal := 0;
                    TotalInvoiceDiscountAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    // es0007.begin
                    TotalGivenAmount:=0;
                    TotalPaymentDiscountOnVAT := 0;
                    // es0007.end
                    //CVP 2016-07-22 ini
                    TotalFactura := 0;
                    ImpPortes := 0;
                    //CVP fi
                end;

                trigger OnPostDataItem();
                begin
                    IF NOT CurrReport.PREVIEW THEN
                      SalesInvCountPrinted.RUN("Sales Invoice Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN
                      NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");
                
                FOR i:=1 TO 4 DO
                  FechaVto[i] := 0D;
                
                FOR i := 1 TO 4 DO BEGIN
                  tottermini[i] := 0;
                  termfinanc[i] := 0;
                  ImporteVto[i] := 0;
                END;
                
                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                  FormatAddr.RespCenter(CompanyAddr,RespCenter);
                  CompanyInfo."Phone No." := RespCenter."Phone No.";
                  CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE BEGIN
                  FormatAddr.Company(CompanyAddr,CompanyInfo);
                END;
                
                DimSetEntry1.SETRANGE("Dimension Set ID","Dimension Set ID");
                
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
                  TotalText := STRSUBSTNO(Text001,GLSetup."LCY Code");
                  TotalInclVATText := STRSUBSTNO(Text1100000,GLSetup."LCY Code");
                  TotalExclVATText := STRSUBSTNO(Text1100001,GLSetup."LCY Code");
                END ELSE BEGIN
                  TotalText := STRSUBSTNO(Text001,"Currency Code");
                  TotalInclVATText := STRSUBSTNO(Text1100000,"Currency Code");
                  TotalExclVATText := STRSUBSTNO(Text1100001,"Currency Code");
                END;
                FormatAddr.SalesInvBillTo(CustAddr,"Sales Invoice Header");
                IF NOT Cust.GET("Bill-to Customer No.") THEN
                  CLEAR(Cust);
                
                IF "Cust. Bank Acc. Code" <> '' THEN BEGIN
                  IF NOT g_recBcoClie.GET("Sell-to Customer No.","Cust. Bank Acc. Code")THEN BEGIN
                    g_recBcoClie.INIT;
                    g_recBcoClie."Customer No." := '';
                    g_recBcoClie.Code := '';
                  END;
                END ELSE BEGIN
                  g_recBcoClie.SETRANGE("Customer No.","Sell-to Customer No.");
                  IF NOT g_recBcoClie.FIND('-') THEN BEGIN
                    g_recBcoClie.INIT;
                    g_recBcoClie."Customer No." := '';
                    g_recBcoClie.Code := '';
                  END;
                END;
                
                // IF NOT g_recBcoClie.GET("Bill-to Customer No.","Cust. Bank Acc. Code") THEN
                //  CLEAR(g_recBcoClie);
                
                IF "Payment Method Code" = '' THEN
                  FormaPago.INIT
                ELSE
                  FormaPago.GET("Payment Method Code");
                
                /*Sacar Vtos*/
                  Movcli.SETCURRENTKEY(Movcli."Document Type",Movcli."Document No.",Movcli."Customer No.");
                  IF (FormaPago."Create Bills") THEN
                    Movcli.SETRANGE(Movcli."Document Type",Movcli."Document Type"::Bill)
                  ELSE
                    Movcli.SETRANGE(Movcli."Document Type",Movcli."Document Type"::Invoice);
                  Movcli.SETRANGE(Movcli."Document No.","Sales Invoice Header"."No.");
                  Movcli.SETRANGE(Movcli."Customer No.","Sales Invoice Header"."Sell-to Customer No.");
                  Movcli.SETRANGE(Movcli."Posting Date","Sales Invoice Header"."Posting Date");
                  //Movcli.SETFILTER(Movcli."Remaining Amount",'<>0');
                  cont:=0;
                  IF Movcli.FIND('-') THEN REPEAT
                     Movcli.CALCFIELDS(Movcli."Remaining Amount",Movcli.Amount);
                     IF Movcli."Remaining Amount" <> 0 THEN BEGIN
                      cont:=cont+1;
                      IF (cont<=4) THEN
                        BEGIN
                        FechaVto[cont]:=Movcli."Due Date";
                        ImporteVto[cont]:=Movcli.Amount;
                        END;
                      END;
                  UNTIL Movcli.NEXT=0;
                
                FOR i := 1 TO 4 DO BEGIN
                  tottermini[i] := 0;
                
                  termfinanc[i] := 0;
                  ImporteVto[i] := 0;
                END;
                
                concl.SETCURRENTKEY("Document Type","Document No.","Customer No.");
                //CVP 2016-12-21 ini
                //el client demana que sorti el total de la factura
                //concl.SETRANGE("Document Type",concl."Document Type"::Bill);{..cartera; 6}
                concl.SETRANGE("Document Type",concl."Document Type"::Invoice);
                concl.SETRANGE("Document No.","Sales Invoice Header"."No.");
                concl.SETRANGE("Customer No.","Sales Invoice Header"."Sell-to Customer No.");
                //concl.SETRANGE(Open,TRUE);
                
                Numven:=0;
                IF concl.FIND('-') THEN BEGIN
                  Numven:=concl.COUNT;
                  v:=0;
                  REPEAT
                    concl.CALCFIELDS(Amount);
                    v:=v+1;
                    tottermini[v] := concl.Amount;
                    IF NOT pago.GET("Sales Invoice Header"."Payment Terms Code") THEN BEGIN
                      pago.INIT;
                      pago.Code := '';
                    END;
                    //IF pago."% Financiación" <> 0 THEN BEGIN
                      //termfinanc[v]:=pago."% Financiación";
                      ImporteVto[v]:=Base[1]/Numven;
                    //END;
                  UNTIL (concl.NEXT(1)=0) OR (v>4);
                END;
                
                IF "Payment Terms Code" = '' THEN
                  PaymentTerms.INIT
                ELSE BEGIN
                  PaymentTerms.GET("Payment Terms Code");
                  PaymentTerms.TranslateDescription(PaymentTerms,"Language Code");
                END;
                
                IF "Payment Method Code" = '' THEN
                  PaymentMethod.INIT
                ELSE
                  PaymentMethod.GET("Payment Method Code");
                IF "Shipment Method Code" = '' THEN
                  ShipmentMethod.INIT
                ELSE BEGIN
                  ShipmentMethod.GET("Shipment Method Code");
                  ShipmentMethod.TranslateDescription(ShipmentMethod,"Language Code");
                END;
                //FormatAddr.SalesInvShipTo(ShipToAddr,"Sales Invoice Header");
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                  IF ShipToAddr[i] <> CustAddr[i] THEN
                    ShowShippingAddr := TRUE;
                
                IF LogInteraction THEN
                  IF NOT CurrReport.PREVIEW THEN BEGIN
                    IF "Bill-to Contact No." <> '' THEN
                      SegManagement.LogDocument(
                        4,"No.",0,0,DATABASE::Contact,"Bill-to Contact No.","Salesperson Code",
                        "Campaign No.","Posting Description",'')
                    ELSE
                      SegManagement.LogDocument(
                        4,"No.",0,0,DATABASE::Customer,"Bill-to Customer No.","Salesperson Code",
                        "Campaign No.","Posting Description",'');
                  END;
                
                
                totalpeso := 0;
                totalbultos := 0;
                
                IF NOT transportista.GET("Shipping Agent Code") THEN BEGIN
                  transportista.INIT;
                  transportista.Code := '';
                END;
                
                linventa2.SETRANGE("Document No.","No.");
                IF linventa2.FIND('-') THEN BEGIN
                  REPEAT
                    //IF Albaran.GET(linventa2."Nº Albarán") OR  Albaran.GET(linventa2."Shipment No.")
                     //THEN BEGIN
                      IF NumAlb <> Albaran."No." THEN BEGIN
                        IF linventa2."Shipment No." ='' THEN BEGIN
                        //NumAlb := linventa2."Nº Albarán";
                        END ELSE BEGIN
                        IF linventa2."Shipment No." <> '' THEN BEGIN
                        NumAlb := linventa2."Shipment No.";
                        END;
                        END;
                        //totalbultos := totalbultos + Albaran.Bultos;
                        //totalpeso := totalpeso + Albaran.Peso;
                      END;
                    //END ELSE BEGIN
                      Albaran.INIT;
                      Albaran."No." := '';
                    //END;
                  UNTIL linventa2.NEXT = 0;
                END;
                linventa2.RESET;

            end;

            trigger OnPostDataItem();
            begin

                // IF NOT g_recBcoClie.GET("Bill-to Customer No.","Cust. Bank Acc. Code") THEN
                //  CLEAR(g_recBcoClie);

                IF "Cust. Bank Acc. Code" <> '' THEN BEGIN
                  IF NOT g_recBcoClie.GET("Sell-to Customer No.","Cust. Bank Acc. Code")THEN BEGIN
                    g_recBcoClie.INIT;
                    g_recBcoClie."Customer No." := '';
                    g_recBcoClie.Code := '';
                  END;
                END ELSE BEGIN
                  g_recBcoClie.SETRANGE("Customer No.","Sell-to Customer No.");
                  IF NOT g_recBcoClie.FIND('-') THEN BEGIN
                    g_recBcoClie.INIT;
                    g_recBcoClie."Customer No." := '';
                    g_recBcoClie.Code := '';
                  END;
                END;
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
                    CaptionML = ENU='Options',
                                ESP='Opciones';
                    field(NoOfCopies;NoOfCopies)
                    {
                        CaptionML = ENU='No. of Copies',
                                    ESP='Nº copias';
                    }
                    field(ShowInternalInfo;ShowInternalInfo)
                    {
                        CaptionML = ENU='Show Internal Information',
                                    ESP='Mostrar información interna';
                    }
                    field(LogInteraction;LogInteraction)
                    {
                        CaptionML = ENU='Log Interaction',
                                    ESP='Log interacción';
                        Enabled = LogInteractionEnable;
                    }
                    field(DisplayAsmInformation;DisplayAssemblyInformation)
                    {
                        CaptionML = ENU='Show Assembly Components',
                                    ESP='Mostrar componentes del ensamblado';
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

        CASE SalesSetup."Logo Position on Documents" OF
          SalesSetup."Logo Position on Documents"::"No Logo":;
          SalesSetup."Logo Position on Documents"::Left:
            BEGIN
              CompanyInfo3.GET;
              CompanyInfo3.CALCFIELDS(Picture);
            END;
          SalesSetup."Logo Position on Documents"::Center:
            BEGIN
              CompanyInfo1.GET;
              CompanyInfo1.CALCFIELDS(Picture);
            END;
          SalesSetup."Logo Position on Documents"::Right:
            BEGIN
              CompanyInfo2.GET;
              CompanyInfo2.CALCFIELDS(Picture);
            END;
        END;
    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
          InitLogInteraction;
    end;

    var
        Text000 : TextConst ENU='Salesperson',ESP='Vendedor';
        Text001 : TextConst ENU='Total %1',ESP='Total %1';
        Text002 : TextConst ENU='Total %1 Incl. VAT',ESP='Total %1 IVA incl.';
        Text003 : TextConst ENU='COPY',ESP='COPIA';
        Text004 : TextConst ENU='Sales - Invoice %1',ESP='Ventas - Factura %1';
        Text005 : TextConst ENU='Page %1',ESP='Pág. %1';
        Text006 : TextConst ENU='Total %1 Excl. VAT',ESP='Total %1 IVA excl.';
        GLSetup : Record "98";
        ShipmentMethod : Record "10";
        PaymentTerms : Record "3";
        SalesPurchPerson : Record "13";
        CompanyInfo : Record "79";
        CompanyInfo1 : Record "79";
        CompanyInfo2 : Record "79";
        CompanyInfo3 : Record "79";
        SalesSetup : Record "311";
        Cust : Record "18";
        VATAmountLine : Record "290" temporary;
        DimSetEntry1 : Record "480";
        DimSetEntry2 : Record "480";
        RespCenter : Record "5714";
        Language : Record "8";
        CurrExchRate : Record "330";
        TempPostedAsmLine : Record "911" temporary;
        SalesInvCountPrinted : Codeunit "315";
        FormatAddr : Codeunit "365";
        SegManagement : Codeunit "5051";
        SalesShipmentBuffer : Record "7190" temporary;
        PostedShipmentDate : Date;
        CustAddr : array [8] of Text[50];
        ShipToAddr : array [8] of Text[50];
        CompanyAddr : array [8] of Text[50];
        OrderNoText : Text[80];
        SalesPersonText : Text[30];
        VATNoText : Text[80];
        ReferenceText : Text[80];
        TotalText : Text[50];
        TotalExclVATText : Text[50];
        TotalInclVATText : Text[50];
        MoreLines : Boolean;
        NoOfCopies : Integer;
        NoOfLoops : Integer;
        CopyText : Text[30];
        ShowShippingAddr : Boolean;
        i : Integer;
        NextEntryNo : Integer;
        FirstValueEntryNo : Integer;
        DimText : Text[120];
        OldDimText : Text[75];
        ShowInternalInfo : Boolean;
        Continue : Boolean;
        LogInteraction : Boolean;
        VALVATBaseLCY : Decimal;
        VALVATAmountLCY : Decimal;
        VALSpecLCYHeader : Text[80];
        Text007 : TextConst ENU='VAT Amount Specification in ',ESP='Especificar importe IVA en ';
        Text008 : TextConst ENU='Local Currency',ESP='Divisa local';
        VALExchRate : Text[50];
        Text009 : TextConst ENU='Exchange rate: %1/%2',ESP='Tipo cambio: %1/%2';
        CalculatedExchRate : Decimal;
        Text010 : TextConst ENU='Sales - Prepayment Invoice %1',ESP='Ventas - Factura prepago %1';
        OutputNo : Integer;
        TotalSubTotal : Decimal;
        TotalAmount : Decimal;
        TotalAmountInclVAT : Decimal;
        TotalAmountVAT : Decimal;
        TotalInvoiceDiscountAmount : Decimal;
        TotalPaymentDiscountOnVAT : Decimal;
        Text1100000 : TextConst ENU='Total %1 Incl. VAT+EC',ESP='Total %1 IVA+RE incl.';
        Text1100001 : TextConst ENU='Total %1 Excl. VAT+EC',ESP='Total %1 IVA+RE excl.';
        VATPostingSetup : Record "325";
        PaymentMethod : Record "289";
        TotalGivenAmount : Decimal;
        [InDataSet]
        LogInteractionEnable : Boolean;
        DisplayAssemblyInformation : Boolean;
        PhoneNoCaptionLbl : TextConst ENU='Phone No.',ESP='Nº teléfono';
        VATRegNoCaptionLbl : TextConst ENU='VAT Registration No.',ESP='CIF/NIF';
        GiroNoCaptionLbl : TextConst ENU='Giro No.',ESP='Nº giro postal';
        BankNameCaptionLbl : TextConst ENU='Bank',ESP='Banco';
        BankAccNoCaptionLbl : TextConst ENU='Account No.',ESP='Nº cuenta';
        DueDateCaptionLbl : TextConst ENU='Due Date',ESP='Fecha vencimiento';
        InvoiceNoCaptionLbl : TextConst ENU='Invoice No.',ESP='Nº factura';
        PostingDateCaptionLbl : TextConst ENU='Posting Date',ESP='Fecha registro';
        HdrDimsCaptionLbl : TextConst ENU='Header Dimensions',ESP='Dimensiones cabecera';
        PmtinvfromdebtpaidtoFactCompCaptionLbl : TextConst ENU='The payment of this invoice, in order to be released from the debt, has to be paid to the Factoring Company.',ESP='Para que se libere de la deuda, el pago de esta factura se debe realizar a la compañía Factoring.';
        UnitPriceCaptionLbl : TextConst ENU='Unit Price',ESP='Precio venta';
        DiscountCaptionLbl : TextConst ENU='Discount %',ESP='% Descuento';
        AmtCaptionLbl : TextConst ENU='Amount',ESP='Importe';
        PostedShpDateCaptionLbl : TextConst ENU='Posted Shipment Date',ESP='Fecha envío registrada';
        InvDiscAmtCaptionLbl : TextConst ENU='Invoice Discount Amount',ESP='Importe descuento factura';
        SubtotalCaptionLbl : TextConst ENU='Subtotal',ESP='Subtotal';
        PmtDiscGivenAmtCaptionLbl : TextConst ENU='Payment Disc Given Amount',ESP='Importe descuento pago';
        PmtDiscVATCaptionLbl : TextConst ENU='Payment Discount on VAT',ESP='Descuento P.P. sobre IVA';
        ShpCaptionLbl : TextConst ENU='Shipment',ESP='Envío';
        LineDimsCaptionLbl : TextConst ENU='Line Dimensions',ESP='Dimensiones línea';
        VATAmtLineVATCaptionLbl : TextConst ENU='VAT %',ESP='% IVA';
        VATECBaseCaptionLbl : TextConst ENU='VAT+EC Base',ESP='Base IVA+RE';
        VATAmountCaptionLbl : TextConst ENU='VAT Amount',ESP='Importe IVA';
        VATAmtSpecCaptionLbl : TextConst ENU='VAT Amount Specification',ESP='Especificación importe IVA';
        VATIdentCaptionLbl : TextConst ENU='VAT Identifier',ESP='Identific. IVA';
        InvDiscBaseAmtCaptionLbl : TextConst ENU='Invoice Discount Base Amount',ESP='Importe base descuento factura';
        LineAmtCaption1Lbl : TextConst ENU='Line Amount',ESP='Importe línea';
        InvPmtDiscCaptionLbl : TextConst ENU='Invoice and Payment Discounts',ESP='Descuentos facturas y pagos';
        ECAmtCaptionLbl : TextConst ENU='EC Amount',ESP='Importe RE';
        ECCaptionLbl : TextConst ENU='EC %',ESP='% RE';
        TotalCaptionLbl : TextConst ENU='TOTAL',ESP='TOTAL';
        VALVATBaseLCYCaption1Lbl : TextConst ENU='VAT Base',ESP='Base IVA';
        ShiptoAddressCaptionLbl : TextConst ENU='Ship-to Address',ESP='Envío a-Dirección';
        PmtTermsDescCaptionLbl : TextConst ENU='Payment Terms',ESP='Términos pago';
        ShpMethodDescCaptionLbl : TextConst ENU='Shipment Method',ESP='Condiciones envío';
        PmtMethodDescCaptionLbl : TextConst ENU='Payment Method',ESP='Forma pago';
        DocDateCaptionLbl : TextConst ENU='Document Date',ESP='Fecha emisión documento';
        HomePageCaptionLbl : TextConst ENU='Home Page',ESP='Página Web';
        EmailCaptionLbl : TextConst ENU='E-Mail',ESP='Correo electrónico';
        transportista : Record "291";
        totalpeso : Decimal;
        totalbultos : Decimal;
        AgenciaCaptionLbl : TextConst ENU='Agency',ESP='Agencia';
        BultosCaptionLbl : TextConst ENU='Packets',ESP='Bultos';
        PesoCaptionLbl : TextConst ENU='Weight',ESP='Peso';
        Albaran : Record "110";
        linventa2 : Record "113";
        NumAlb : Code[20];
        FaxNoCaptionLbl : TextConst ENU='Fax No.',ESP='Nº fax';
        refer : Text[30];
        arti : Record "27";
        ReferenciaCaptionLbl : TextConst ENU='Reference',ESP='Referencia';
        FormaPago : Record "289";
        formapagodesc : Text[30];
        CantidadCaptionLbl : TextConst ENU='Quantity',ESP='Cantidad';
        ConceptoCaptionLbl : TextConst ENU='Concept',ESP='Concepto';
        PrecioCaptionLbl : TextConst ENU='Price',ESP='Precio';
        DescuentoCaptionLbl : TextConst ENU='%Discount',ESP='% Dto.';
        ImporteCaptionLbl : TextConst ENU='Amount',ESP='Importe';
        LongitudCaptionLbl : TextConst ENU='Lenght',ESP='Longitud';
        PagaderaCaptionLbl : TextConst ENU='PAY IN:',ESP='PAGADERA EN:';
        VencimientoCaptionLbl : TextConst ENU='DUE DATE',ESP='VENCIMIENTO';
        FinCaptionLbl : TextConst ENU='% FIN.',ESP='% FIN.';
        g_recBcoClie : Record "287";
        Movcli : Record "21";
        FechaVto : array [4] of Date;
        ImporteVto : array [4] of Decimal;
        cont : Integer;
        termfinanc : array [5] of Decimal;
        tottermini : array [5] of Decimal;
        concl : Record "21";
        Numven : Integer;
        v : Integer;
        pago : Record "3";
        Base : array [4] of Decimal;
        ImpPortes : Decimal;
        TotalFactura : Decimal;
        SalesILineAux : Record "113";
        SalesSHeader : Record "110";
        Imprimir : Boolean;
        ConfCont : Record "98";
        Pesos : Decimal;
        PesosCaptionLbl : Label 'Pesos';

    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    procedure FindPostedShipmentDate() : Date;
    var
        SalesShipmentHeader : Record "110";
        SalesShipmentBuffer2 : Record "7190" temporary;
    begin
        NextEntryNo := 1;
        IF "Sales Invoice Line"."Shipment No." <> '' THEN
          IF SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.") THEN
            EXIT(SalesShipmentHeader."Posting Date");

        IF "Sales Invoice Header"."Order No."='' THEN
          EXIT("Sales Invoice Header"."Posting Date");

        CASE "Sales Invoice Line".Type OF
          "Sales Invoice Line".Type::Item:
            GenerateBufferFromValueEntry("Sales Invoice Line");
          "Sales Invoice Line".Type::"G/L Account","Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)","Sales Invoice Line".Type::"Fixed Asset":
             GenerateBufferFromShipment("Sales Invoice Line");
          "Sales Invoice Line".Type::" ":
              EXIT(0D);
        END;

        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.SETRANGE("Document No.","Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No." ,"Sales Invoice Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
          SalesShipmentBuffer2 := SalesShipmentBuffer;
            IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
              SalesShipmentBuffer.GET(
                SalesShipmentBuffer2."Document No.",SalesShipmentBuffer2."Line No.",SalesShipmentBuffer2."Entry No.");
              SalesShipmentBuffer.DELETE;
              EXIT(SalesShipmentBuffer2."Posting Date");
            END ;
           SalesShipmentBuffer.CALCSUMS(Quantity);
           IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
             SalesShipmentBuffer.DELETEALL;
             EXIT("Sales Invoice Header"."Posting Date");
           END;
        END ELSE
          EXIT("Sales Invoice Header"."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2 : Record "113");
    var
        ValueEntry : Record "5802";
        ItemLedgerEntry : Record "32";
        TotalQuantity : Decimal;
        Quantity : Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.",SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date","Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.",'');
        ValueEntry.SETFILTER("Entry No.",'%1..',FirstValueEntryNo);
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

    procedure GenerateBufferFromShipment(SalesInvoiceLine : Record "113");
    var
        SalesInvoiceHeader : Record "112";
        SalesInvoiceLine2 : Record "113";
        SalesShipmentHeader : Record "110";
        SalesShipmentLine : Record "111";
        TotalQuantity : Decimal;
        Quantity : Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.",'..%1',"Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.","Sales Invoice Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-') THEN
          REPEAT
            SalesInvoiceLine2.SETRANGE("Document No.",SalesInvoiceHeader."No.");
            SalesInvoiceLine2.SETRANGE("Line No.",SalesInvoiceLine."Line No.");
            SalesInvoiceLine2.SETRANGE(Type,SalesInvoiceLine.Type);
            SalesInvoiceLine2.SETRANGE("No.",SalesInvoiceLine."No.");
            SalesInvoiceLine2.SETRANGE("Unit of Measure Code",SalesInvoiceLine."Unit of Measure Code");
            IF SalesInvoiceLine2.FIND('-') THEN
              REPEAT
                TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
              UNTIL SalesInvoiceLine2.NEXT = 0;
          UNTIL SalesInvoiceHeader.NEXT = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.","Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.","Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.",SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.",SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type,SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.",SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code",SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity,'<>%1',0);

        IF SalesShipmentLine.FIND('-') THEN
          REPEAT
            IF "Sales Invoice Header"."Get Shipment Used" THEN
              CorrectShipment(SalesShipmentLine);
            IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
              TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
            ELSE BEGIN
              IF ABS(SalesShipmentLine.Quantity)  > ABS(TotalQuantity) THEN
                SalesShipmentLine.Quantity := TotalQuantity;
              Quantity :=
                SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

              TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
              SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

              IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN
                BEGIN
                  AddBufferEntry(
                    SalesInvoiceLine,
                    Quantity,
                    SalesShipmentHeader."Posting Date");
                END;
            END;
          UNTIL (SalesShipmentLine.NEXT = 0) OR (TotalQuantity = 0);
    end;

    procedure CorrectShipment(var SalesShipmentLine : Record "111");
    var
        SalesInvoiceLine : Record "113";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.","Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.",SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.",SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
           REPEAT
              SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
           UNTIL SalesInvoiceLine.NEXT = 0;
    end;

    procedure AddBufferEntry(SalesInvoiceLine : Record "113";QtyOnShipment : Decimal;PostingDate : Date);
    begin
        SalesShipmentBuffer.SETRANGE("Document No.",SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.",SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date",PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
          SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
          SalesShipmentBuffer.MODIFY;
          EXIT;
        END;

        WITH SalesShipmentBuffer DO BEGIN
          "Document No." := SalesInvoiceLine."Document No.";
          "Line No." := SalesInvoiceLine."Line No.";
          "Entry No." := NextEntryNo;
          Type := SalesInvoiceLine.Type;
          "No." := SalesInvoiceLine."No.";
          Quantity := QtyOnShipment;
         "Posting Date" := PostingDate;
          INSERT;
          NextEntryNo := NextEntryNo + 1
        END;
    end;

    local procedure DocumentCaption() : Text[250];
    begin
        IF "Sales Invoice Header"."Prepayment Invoice" THEN
          EXIT(Text010);
        EXIT(Text004);
    end;

    procedure GetCarteraInvoice() : Boolean;
    var
        CustLedgEntry : Record "21";
    begin
        WITH CustLedgEntry DO BEGIN
          SETCURRENTKEY("Document No.","Document Type","Customer No.");
          SETRANGE("Document Type","Document Type"::Invoice);
          SETRANGE("Document No.","Sales Invoice Header"."No.");
          SETRANGE("Customer No.","Sales Invoice Header"."Bill-to Customer No.");
          SETRANGE("Posting Date","Sales Invoice Header"."Posting Date");
          IF FIND('-') THEN
            IF CustLedgEntry."Document Situation" = CustLedgEntry."Document Situation"::" " THEN
              EXIT(FALSE)
            ELSE
              EXIT(TRUE)
          ELSE
            EXIT(FALSE);
        END;
    end;

    procedure InitializeRequest(NewNoOfCopies : Integer;NewShowInternalInfo : Boolean;NewLogInteraction : Boolean;DisplayAsmInfo : Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    procedure CollectAsmInformation();
    var
        ValueEntry : Record "5802";
        ItemLedgerEntry : Record "32";
        PostedAsmHeader : Record "910";
        PostedAsmLine : Record "911";
        SalesShipmentLine : Record "111";
    begin
        TempPostedAsmLine.DELETEALL;
        IF "Sales Invoice Line".Type <> "Sales Invoice Line".Type::Item THEN
          EXIT;
        WITH ValueEntry DO BEGIN
          SETCURRENTKEY("Document No.");
          SETRANGE("Document No.","Sales Invoice Line"."Document No.");
          SETRANGE("Document Type","Document Type"::"Sales Invoice");
          SETRANGE("Document Line No.","Sales Invoice Line"."Line No.");
          IF NOT FINDSET THEN
            EXIT;
        END;
        REPEAT
          IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
            IF ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" THEN BEGIN
              SalesShipmentLine.GET(ItemLedgerEntry."Document No.",ItemLedgerEntry."Document Line No.");
              IF SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader) THEN BEGIN
                PostedAsmLine.SETRANGE("Document No.",PostedAsmHeader."No.");
                IF PostedAsmLine.FINDSET THEN
                  REPEAT
                    TreatAsmLineBuffer(PostedAsmLine);
                  UNTIL PostedAsmLine.NEXT = 0;
              END;
            END;
          END;
        UNTIL ValueEntry.NEXT = 0;
    end;

    procedure TreatAsmLineBuffer(PostedAsmLine : Record "911");
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type,PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.",PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code",PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description,PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code",PostedAsmLine."Unit of Measure Code");
        IF TempPostedAsmLine.FINDFIRST THEN BEGIN
          TempPostedAsmLine.Quantity += PostedAsmLine.Quantity;
          TempPostedAsmLine.MODIFY;
        END ELSE BEGIN
          CLEAR(TempPostedAsmLine);
          TempPostedAsmLine := PostedAsmLine;
          TempPostedAsmLine.INSERT;
        END;
    end;

    procedure GetUOMText(UOMCode : Code[10]) : Text[10];
    var
        UnitOfMeasure : Record "204";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
          EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent() : Text[10];
    begin
        EXIT(PADSTR('',2,' '));
    end;
}

