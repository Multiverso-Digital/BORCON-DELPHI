library Verificacpf;

uses
  ActiveX,
  ComObj,
  WebBroker,

  ISAPIThreadPool,

  ISAPIApp,






  Uverificacpf in 'Uverificacpf.pas' {WebModule1: TWebModule},
  VerificaCPFImpl in 'VerificaCPFImpl.pas',
  VerificaCPFIntf in 'VerificaCPFIntf.pas';

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
