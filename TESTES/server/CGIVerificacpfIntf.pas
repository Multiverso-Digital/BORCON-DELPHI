{ Invokable interface ICGIVerificacpf }

unit CGIVerificacpfIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns;

type


  { Invokable interfaces must derive from IInvokable }
  ICGIVerificacpf = interface(IInvokable)
  ['{5FE4509D-F8BC-4FA3-9E59-E8EA8F379257}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function cgiverificacpf(cpf: string): boolean; stdcall;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ICGIVerificacpf));

end.
 