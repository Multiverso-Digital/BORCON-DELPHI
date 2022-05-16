program Cliente;

uses
  Forms,
  Ucliente in 'Ucliente.pas' {Form1},
  IverificaCNPJ1 in 'IverificaCNPJ1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
