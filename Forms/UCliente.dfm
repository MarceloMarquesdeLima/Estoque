inherited frmCliente: TfrmCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 473
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 136
    Top = 128
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = edtCodigo
  end
  object Label2: TLabel [1]
    Left = 136
    Top = 176
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = edtNome
  end
  object Label3: TLabel [2]
    Left = 136
    Top = 224
    Width = 54
    Height = 13
    Caption = 'ENDERE'#199'O'
    FocusControl = edtEndereco
  end
  object Label4: TLabel [3]
    Left = 836
    Top = 227
    Width = 43
    Height = 13
    Caption = 'N'#218'MERO'
    FocusControl = edtNumero
  end
  object Label5: TLabel [4]
    Left = 136
    Top = 280
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = edtBairro
  end
  object Label6: TLabel [5]
    Left = 470
    Top = 280
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = edtCidade
  end
  object Label7: TLabel [6]
    Left = 923
    Top = 283
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = edtEstado
  end
  object Label8: TLabel [7]
    Left = 136
    Top = 336
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = edtCep
  end
  object Label9: TLabel [8]
    Left = 368
    Top = 333
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = edtTelefone
  end
  object Label10: TLabel [9]
    Left = 440
    Top = 128
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = edtCpf
  end
  object Label11: TLabel [10]
    Left = 598
    Top = 333
    Width = 34
    Height = 13
    Caption = 'E-MAIL'
    FocusControl = edtAmail
  end
  object Label12: TLabel [11]
    Left = 288
    Top = 128
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
    Top = 413
    ExplicitTop = 413
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object edtCodigo: TDBEdit [14]
    Left = 136
    Top = 144
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_CLIENTE'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object edtNome: TDBEdit [15]
    Left = 136
    Top = 195
    Width = 834
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object edtEndereco: TDBEdit [16]
    Left = 136
    Top = 243
    Width = 689
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object edtNumero: TDBEdit [17]
    Left = 836
    Top = 243
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = DSPadrao
    TabOrder = 5
  end
  object edtBairro: TDBEdit [18]
    Left = 136
    Top = 299
    Width = 305
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DSPadrao
    TabOrder = 6
  end
  object edtCidade: TDBEdit [19]
    Left = 470
    Top = 299
    Width = 435
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = DSPadrao
    TabOrder = 7
  end
  object edtEstado: TDBEdit [20]
    Left = 923
    Top = 302
    Width = 47
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = DSPadrao
    TabOrder = 8
  end
  object edtCep: TDBEdit [21]
    Left = 136
    Top = 352
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = DSPadrao
    TabOrder = 9
  end
  object edtTelefone: TDBEdit [22]
    Left = 368
    Top = 352
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = DSPadrao
    TabOrder = 10
  end
  object edtCpf: TDBEdit [23]
    Left = 440
    Top = 144
    Width = 212
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = DSPadrao
    TabOrder = 11
  end
  object edtAmail: TDBEdit [24]
    Left = 598
    Top = 352
    Width = 372
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = DSPadrao
    TabOrder = 12
  end
  object edtCadastro: TDBEdit [25]
    Left = 288
    Top = 144
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
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT '
      '    ID_CLIENTE,'
      '    NOME,'
      '    ENDERECO,'
      '    NUMERO,'
      '    BAIRRO,'
      '    CIDADE,'
      '    UF,'
      '    CEP,'
      '    TELEFONE,'
      '    CPF,'
      '    EMAIL,'
      '    CADASTRO'
      'FROM CLIENTE'
      'ORDER BY ID_CLIENTE')
    Left = 944
    Top = 27
    object QPadraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    object QPadraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000.000.000-00;0;_'
      Size = 16
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
    Left = 1016
    Top = 27
  end
end
