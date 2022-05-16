unit Ucgiconsomews;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, InvokeRegistry, StdCtrls, Rio, SOAPHTTPClient;

type
  TForm1 = class(TForm)
    HTTPRIO1: THTTPRIO;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Icgiverificacpf1;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin


If (Httprio1 as Icgiverificacpf).cgiverificacpf(edit1.text) then
    begin
    showmessage('CPF OK.');
    end
    else
    begin
    showmessage('CPF inválido.');
    end;

end;

end.
