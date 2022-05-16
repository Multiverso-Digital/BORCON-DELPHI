unit Uconsomews;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, InvokeRegistry, StdCtrls, Buttons, Rio, SOAPHTTPClient;

type
  TForm1 = class(TForm)
    HTTPRIO1: THTTPRIO;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Iverificacpf1;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin

If (Httprio1 as Iverificacpf).VerificaCPF(edit1.text) then
   begin
   showmessage('CPF OK!');
   end
   else
   begin
   showmessage('CPF Inválido');

   end;


end;

end.
