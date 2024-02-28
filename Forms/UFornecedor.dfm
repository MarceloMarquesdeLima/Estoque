inherited frmFornecedor: TfrmFornecedor
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 472
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 189
    Top = 109
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 189
    Top = 152
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = edtNome
  end
  object Label3: TLabel [2]
    Left = 189
    Top = 202
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 803
    Top = 205
    Width = 43
    Height = 13
    Caption = 'N'#218'MERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 189
    Top = 256
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 440
    Top = 256
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 907
    Top = 259
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 189
    Top = 304
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 440
    Top = 304
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 496
    Top = 109
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 189
    Top = 352
    Width = 34
    Height = 13
    Caption = 'E-MAIL'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 339
    Top = 109
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = edtCadastro
  end
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 412
    ExplicitTop = 412
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 189
    Top = 125
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_FORNECEDOR'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object edtNome: TDBEdit [15]
    Left = 189
    Top = 165
    Width = 748
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [16]
    Left = 189
    Top = 221
    Width = 585
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [17]
    Left = 803
    Top = 221
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = DSPadrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [18]
    Left = 189
    Top = 275
    Width = 228
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DSPadrao
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [19]
    Left = 440
    Top = 275
    Width = 449
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = DSPadrao
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [20]
    Left = 907
    Top = 275
    Width = 30
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DSPadrao
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [21]
    Left = 189
    Top = 320
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = DSPadrao
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [22]
    Left = 440
    Top = 320
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = DSPadrao
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [23]
    Left = 496
    Top = 125
    Width = 264
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CNPJ'
    DataSource = DSPadrao
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [24]
    Left = 189
    Top = 365
    Width = 463
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = DSPadrao
    TabOrder = 12
  end
  object edtCadastro: TDBEdit [25]
    Left = 339
    Top = 125
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    Enabled = False
    TabOrder = 13
  end
  inherited QPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT '
      '   ID_FORNECEDOR,'
      '   NOME,'
      '   ENDERECO,'
      '   NUMERO,'
      '   BAIRRO,'
      '   CIDADE,'
      '   UF,'
      '   CEP,'
      '   TELEFONE,'
      '   CNPJ,'
      '   EMAIL,'
      '   CADASTRO'
      'FROM FORNECEDOR')
    Left = 952
    Top = 35
    object QPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object QPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object QPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object QPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object QPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object QPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00.000-000;0;_'
      Size = 16
    end
    object QPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 16
    end
    object QPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00;0;_'
    end
    object QPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object QPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DSPadrao: TDataSource
    Left = 1024
    Top = 35
  end
end
