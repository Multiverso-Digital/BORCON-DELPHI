object Form1: TForm1
  Left = 215
  Top = 126
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 112
    Top = 168
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 232
    Top = 168
    Width = 193
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object HTTPRIO1: THTTPRIO
    WSDLLocation = 'http://127.0.0.1/testeweb/Verificacpf.dll/wsdl/Iverificacpf'
    Service = 'IVerificaCPFservice'
    Port = 'IverificacpfPort'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 96
    Top = 64
  end
end
