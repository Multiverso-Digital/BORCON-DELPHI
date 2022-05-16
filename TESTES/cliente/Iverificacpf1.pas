// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://127.0.0.1/testeweb/Verificacpf.dll/wsdl/Iverificacpf
// Encoding : utf-8
// Version  : 1.0
// (19/06/2004 08:11:16 - 1.33.2.5)
// ************************************************************************ //

unit Iverificacpf1;

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
  // Namespace : urn:VerificaCPFIntf-IVerificaCPF
  // soapAction: urn:VerificaCPFIntf-IVerificaCPF#VerificaCPF
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IVerificaCPFbinding
  // service   : IVerificaCPFservice
  // port      : IverificacpfPort
  // URL       : http://127.0.0.1/testeweb/Verificacpf.dll/soap/Iverificacpf
  // ************************************************************************ //
  IVerificaCPF = interface(IInvokable)
  ['{CEEE9786-52B4-9B2D-1F5D-2B4716EEF21F}']
    function  VerificaCPF(const cpf: WideString): Boolean; stdcall;
  end;

function GetIVerificaCPF(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IVerificaCPF;


implementation

function GetIVerificaCPF(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IVerificaCPF;
const
  defWSDL = 'http://127.0.0.1/testeweb/Verificacpf.dll/wsdl/Iverificacpf';
  defURL  = 'http://127.0.0.1/testeweb/Verificacpf.dll/soap/Iverificacpf';
  defSvc  = 'IVerificaCPFservice';
  defPrt  = 'IverificacpfPort';
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
    Result := (RIO as IVerificaCPF);
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
  InvRegistry.RegisterInterface(TypeInfo(IVerificaCPF), 'urn:VerificaCPFIntf-IVerificaCPF', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IVerificaCPF), 'urn:VerificaCPFIntf-IVerificaCPF#VerificaCPF');

end. 