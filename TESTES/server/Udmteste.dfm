object DMteste: TDMteste
  OldCreateOrder = False
  Left = 465
  Top = 250
  Height = 163
  Width = 277
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=K:\BORCOM2004\Dados' +
      '\concurso.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 8
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CommandText = 'select * from CadInsc'
    Parameters = <>
    Left = 96
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADODataSet1
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 16
  end
end
