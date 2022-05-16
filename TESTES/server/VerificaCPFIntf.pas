{ Invokable interface IVerificaCPF }

unit VerificaCPFIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns;

type



  { Invokable interfaces must derive from IInvokable }
  IVerificaCPF = interface(IInvokable)
  ['{C63073DD-93C0-4E23-952F-7B80AB13CEBE}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function VerificaCPF(cpf: string): boolean; stdcall;

  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(IVerificaCPF));

end.
 