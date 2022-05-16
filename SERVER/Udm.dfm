object DMInscricao: TDMInscricao
  OldCreateOrder = False
  Left = 315
  Top = 192
  Height = 346
  Width = 551
  object AC: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=K:\BORCOM2004\Dados' +
      '\concurso.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 32
  end
  object aqCad: TADODataSet
    Connection = AC
    CommandText = 'select * from CadInsc'#13#10'where cpf = :@cpf'
    Parameters = <
      item
        Name = '@cpf'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 104
    Top = 32
  end
  object provCad: TDataSetProvider
    DataSet = aqCad
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 32
  end
end
