program Consomews;

uses
  Forms,
  Uconsomews in 'Uconsomews.pas' {Form1},
  Iverificacpf1 in 'Iverificacpf1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
