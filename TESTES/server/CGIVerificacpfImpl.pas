{ Invokable implementation File for TCGIVerificacpf which implements ICGIVerificacpf }

unit CGIVerificacpfImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, CGIVerificacpfIntf;

type

  { TCGIVerificacpf }
  TCGIVerificacpf = class(TInvokableClass, ICGIVerificacpf)
  public
   function cgiverificacpf(cpf: string): boolean; stdcall;

  end;

implementation

function TCGIVerificacpf.cgiverificacpf(cpf: string): boolean; stdcall;
var
  soma, dg1, dg2, I, Igual : integer;
begin

  if length(cpf)<>11 then
  begin
    cgiVerificacpf:=false;
    exit;
  end;


  soma:=0;
  inc(soma,(ord(cpf[1])-$30)*10);
  inc(soma,(ord(cpf[2])-$30)*9);
  inc(soma,(ord(cpf[3])-$30)*8);
  inc(soma,(ord(cpf[4])-$30)*7);
  inc(soma,(ord(cpf[5])-$30)*6);
  inc(soma,(ord(cpf[6])-$30)*5);
  inc(soma,(ord(cpf[7])-$30)*4);
  inc(soma,(ord(cpf[8])-$30)*3);
  inc(soma,(ord(cpf[9])-$30)*2);
  dg1:=11-(soma mod 11);
  if dg1>=10 then dg1:=0;
  soma:=0;
  inc(soma,(ord(cpf[1])-$30)*11);
  inc(soma,(ord(cpf[2])-$30)*10);
  inc(soma,(ord(cpf[3])-$30)*9);
  inc(soma,(ord(cpf[4])-$30)*8);
  inc(soma,(ord(cpf[5])-$30)*7);
  inc(soma,(ord(cpf[6])-$30)*6);
  inc(soma,(ord(cpf[7])-$30)*5);
  inc(soma,(ord(cpf[8])-$30)*4);
  inc(soma,(ord(cpf[9])-$30)*3);
  inc(soma,(2*dg1));
  dg2:=11-(soma mod 11);
  if dg2>=10 then dg2:=0;
  cgiVerificacpf:=(cpf[10]=chr(dg1+$30)) and (cpf[11]=chr(dg2+$30));
end;




initialization
  { Invokable classes must be registered }
  InvRegistry.RegisterInvokableClass(TCGIVerificacpf);

end.
