{ Invokable interface IVerificaCNPJ }

unit VerificaCNPJIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns;

type




  { Invokable interfaces must derive from IInvokable }
  IVerificaCNPJ = interface(IInvokable)
  ['{C857F9FE-5CCA-4239-857A-080933EFFC46}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function verificaDC(cpf: string): boolean; stdcall;

  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(IVerificaCNPJ));

end.
