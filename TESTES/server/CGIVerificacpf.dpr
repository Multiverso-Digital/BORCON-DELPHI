program CGIVerificacpf;

{$APPTYPE CONSOLE}

uses
  WebBroker,
  CGIApp,
  Ucgiverificacpf in 'Ucgiverificacpf.pas' {WebModule1: TWebModule},
  CGIVerificacpfImpl in 'CGIVerificacpfImpl.pas',
  CGIVerificacpfIntf in 'CGIVerificacpfIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TWebModule1, WebModule1);
  Application.Run;
end.
