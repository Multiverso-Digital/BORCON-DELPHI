Unit Udmteste;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm, Provider,
  DB, ADODB;

type
  IDMteste = interface(IAppServerSOAP)
    ['{9219D8B0-23B3-4BBD-9250-C9C6437EFA58}']
  end;

  TDMteste = class(TSoapDataModule, IDMteste, IAppServerSOAP, IAppServer)
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    DataSetProvider1: TDataSetProvider;
  private
  
  public
  
  end;

implementation

{$R *.DFM}

procedure TDMtesteCreateInstance(out obj: TObject);
begin
 obj := TDMteste.Create(nil);
end;

initialization
   InvRegistry.RegisterInvokableClass(TDMteste, TDMtesteCreateInstance);
   InvRegistry.RegisterInterface(TypeInfo(IDMteste));
end.
