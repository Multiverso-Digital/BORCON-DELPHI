// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://127.0.0.1/testeweb/cgiVerificacpf.exe/wsdl/Icgiverificacpf
// Encoding : utf-8
// Version  : 1.0
// (19/06/2004 08:29:00 - 1.33.2.5)
// ************************************************************************ //

unit Icgiverificacpf1;

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
  // Namespace : urn:CGIVerificacpfIntf-ICGIVerificacpf
  // soapAction: urn:CGIVerificacpfIntf-ICGIVerificacpf#cgiverificacpf
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : ICGIVerificacpfbinding
  // service   : ICGIVerificacpfservice
  // port      : IcgiverificacpfPort
  // URL       : http://127.0.0.1/testeweb/cgiVerificacpf.exe/soap/Icgiverificacpf
  // ************************************************************************ //
  ICGIVerificacpf = interface(IInvokable)
  ['{E8911F4C-580C-95BC-9E81-9EAFD991FB16}']
    function  cgiverificacpf(const cpf: WideString): Boolean; stdcall;
  end;

function GetICGIVerificacpf(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ICGIVerificacpf;


implementation

function GetICGIVerificacpf(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ICGIVerificacpf;
const
  defWSDL = 'http://127.0.0.1/testeweb/cgiVerificacpf.exe/wsdl/Icgiverificacpf';
  defURL  = 'http://127.0.0.1/testeweb/cgiVerificacpf.exe/soap/Icgiverificacpf';
  defSvc  = 'ICGIVerificacpfservice';
  defPrt  = 'IcgiverificacpfPort';
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
    Result := (RIO as ICGIVerificacpf);
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
  InvRegistry.RegisterInterface(TypeInfo(ICGIVerificacpf), 'urn:CGIVerificacpfIntf-ICGIVerificacpf', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ICGIVerificacpf), 'urn:CGIVerificacpfIntf-ICGIVerificacpf#cgiverificacpf');

end. 