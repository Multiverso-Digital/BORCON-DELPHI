program CGIConsomeWS;

uses
  Forms,
  Ucgiconsomews in 'Ucgiconsomews.pas' {Form1},
  Icgiverificacpf1 in 'Icgiverificacpf1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
