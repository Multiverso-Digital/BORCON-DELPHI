unit Ucliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, InvokeRegistry, Rio, SOAPHTTPClient, StdCtrls, Buttons, Mask,
  DBCtrls, DB, DBClient, SOAPConn, Grids, DBGrids;

type
  TForm1 = class(TForm)
    SoapConnection1: TSoapConnection;
    cds: TClientDataSet;
    cdscpf: TWideStringField;
    cdsnome: TWideStringField;
    cdsEndereco: TWideStringField;
    cdsnumero: TWideStringField;
    cdscomplemento: TWideStringField;
    cdsbairro: TWideStringField;
    cdscidade: TWideStringField;
    cdsUF: TWideStringField;
    cdscep: TWideStringField;
    cdsddd: TWideStringField;
    cdstelefones: TWideStringField;
    cdsemail: TWideStringField;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Verifica_CPF: TBitBtn;
    HTTPRIO1: THTTPRIO;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label13: TLabel;
    Label14: TLabel;
    procedure Verifica_CPFClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses IverificaCNPJ1;

{$R *.dfm}

procedure TForm1.Verifica_CPFClick(Sender: TObject);



begin
If  not  (HTTPRIO1 as IverificaCNPJ).verificaDC(edit1.text) then
    begin
    showmessage('CPF inválido.');
    exit;
    end;

if cds.active then cds.active := false;
cds.Params[0].AsString := edit1.text;
cds.active := true;
if cds.RecordCount > 0 then
begin
cds.edit;
end
else
begin
cds.append;
cdscpf.asstring := edit1.Text;
end;




end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
cds.Open;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
cds.post;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
cds.applyupdates(-1);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
cds.delete;
end;

end.
