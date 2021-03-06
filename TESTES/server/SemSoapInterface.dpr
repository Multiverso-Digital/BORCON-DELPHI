library SemSoapInterface;

uses
  ActiveX,
  ComObj,
  WebBroker,

 ISAPIThreadPool,
  ISAPIApp,  
  USemSoapInterface in 'USemSoapInterface.pas' {WebModule1: TWebModule},
  Udmteste in 'Udmteste.pas' {DMteste: TSoapDataModule};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.CreateForm(TWebModule1, WebModule1);
  Application.Run;
end.
