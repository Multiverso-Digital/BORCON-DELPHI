Unit Udm;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm, Provider,
  DB, ADODB;

type
  IDMInscricao = interface(IAppServerSOAP)
    ['{087C792F-92E4-4722-88A8-B9A0394680AA}']
  end;

  TDMInscricao = class(TSoapDataModule, IDMInscricao, IAppServerSOAP, IAppServer)
    AC: TADOConnection;
    aqCad: TADODataSet;
    provCad: TDataSetProvider;
  private
  
  public
  
  end;

implementation

{$R *.DFM}

procedure TDMInscricaoCreateInstance(out obj: TObject);
begin
 obj := TDMInscricao.Create(nil);
end;

initialization
   InvRegistry.RegisterInvokableClass(TDMInscricao, TDMInscricaoCreateInstance);
   InvRegistry.RegisterInterface(TypeInfo(IDMInscricao));
end.
