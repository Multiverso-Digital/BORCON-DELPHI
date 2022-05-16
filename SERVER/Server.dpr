library Server;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,

  UServer in 'UServer.pas' {WebModule1: TWebModule},
  VerificaCNPJImpl in 'VerificaCNPJImpl.pas',
  VerificaCNPJIntf in 'VerificaCNPJIntf.pas',
  Udm in 'Udm.pas' {DMInscricao: TSoapDataModule};

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
