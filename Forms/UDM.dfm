object DM: TDM
  OldCreateOrder = False
  Height = 330
  Width = 536
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\projetos\Delphi\Estoque\EXE\Banco\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=Mar15ma02li82'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 24
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 112
    Top = 24
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 216
    Top = 24
  end
end
