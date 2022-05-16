// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://127.0.0.1/WebServiceBC/Server.dll/wsdl/IverificaCNPJ
// Encoding : utf-8
// Version  : 1.0
// (15/06/2004 13:52:48 - 1.33.2.5)
// ************************************************************************ //

unit IverificaCNPJ1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Namespace : urn:VerificaCNPJIntf-IVerificaCNPJ
  // soapAction: urn:VerificaCNPJIntf-IVerificaCNPJ#verificaDC
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IVerificaCNPJbinding
  // service   : IVerificaCNPJservice
  // port      : IverificaCNPJPort
  // URL       : http://127.0.0.1/WebServiceBC/Server.dll/soap/IverificaCNPJ
  // ************************************************************************ //
  IVerificaCNPJ = interface(IInvokable)
  ['{A67AA881-76ED-4B70-2B5A-F3192FB88BDF}']
    function  verificaDC(const cpf: WideString): Boolean; stdcall;
  end;

function GetIVerificaCNPJ(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IVerificaCNPJ;


implementation

function GetIVerificaCNPJ(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IVerificaCNPJ;
const
  defWSDL = 'http://127.0.0.1/WebServiceBC/Server.dll/wsdl/IverificaCNPJ';
  defURL  = 'http://127.0.0.1/WebServiceBC/Server.dll/soap/IverificaCNPJ';
  defSvc  = 'IVerificaCNPJservice';
  defPrt  = 'IverificaCNPJPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IVerificaCNPJ);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(IVerificaCNPJ), 'urn:VerificaCNPJIntf-IVerificaCNPJ', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IVerificaCNPJ), 'urn:VerificaCNPJIntf-IVerificaCNPJ#verificaDC');

end. 