inherited frmUsuario: TfrmUsuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 379
  ClientWidth = 765
  ExplicitWidth = 771
  ExplicitHeight = 408
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 115
    Top = 116
    Width = 50
    Height = 19
    Caption = 'C'#243'digo'
    FocusControl = edtCodigo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 115
    Top = 180
    Width = 42
    Height = 19
    Caption = 'Nome'
    FocusControl = edtNome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 115
    Top = 232
    Width = 43
    Height = 19
    Caption = 'Senha'
    FocusControl = edtSenha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 377
    Top = 236
    Width = 32
    Height = 19
    Caption = 'Tipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 285
    Top = 116
    Width = 99
    Height = 19
    Caption = 'Data Cadastro'
    FocusControl = edtCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel1: TPanel
    Width = 765
    TabOrder = 5
    ExplicitWidth = 765
    inherited btnNovo: TBitBtn
      Left = 46
      ExplicitLeft = 46
    end
    inherited btnDeletar: TBitBtn
      Left = 142
      ExplicitLeft = 142
    end
    inherited btnEditar: TBitBtn
      Left = 238
      ExplicitLeft = 238
    end
    inherited btnGravar: TBitBtn
      Left = 334
      ExplicitLeft = 334
    end
    inherited btnCancelar: TBitBtn
      Left = 430
      ExplicitLeft = 430
    end
    inherited btnAtualizar: TBitBtn
      Left = 526
      ExplicitLeft = 526
    end
    inherited btnPesquisar: TBitBtn
      Left = 622
      OnClick = btnPesquisarClick
      ExplicitLeft = 622
    end
  end
  inherited Panel2: TPanel
    Top = 316
    Width = 765
    Height = 63
    TabOrder = 6
    ExplicitTop = 316
    ExplicitWidth = 765
    ExplicitHeight = 63
    inherited DBNavigator1: TDBNavigator
      Left = 190
      Hints.Strings = ()
      ExplicitLeft = 190
    end
  end
  object edtCodigo: TDBEdit [7]
    Left = 115
    Top = 136
    Width = 134
    Height = 27
    CharCase = ecUpperCase
    DataField = 'ID_USUARIO'
    DataSource = DSPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtNome: TDBEdit [8]
    Left = 115
    Top = 199
    Width = 530
    Height = 27
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DSPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtSenha: TDBEdit [9]
    Left = 115
    Top = 255
    Width = 233
    Height = 27
    CharCase = ecUpperCase
    DataField = 'SENHA'
    DataSource = DSPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
  object edtCadastro: TDBEdit [10]
    Left = 285
    Top = 136
    Width = 172
    Height = 27
    CharCase = ecUpperCase
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object cmbTipo: TDBComboBox [11]
    Left = 375
    Top = 255
    Width = 270
    Height = 27
    CharCase = ecUpperCase
    DataField = 'TIPO'
    DataSource = DSPadrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    ParentFont = False
    TabOrder = 3
  end
  inherited QPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'select '
      '      id_usuario, '
      '      nome, '
      '      senha, '
      '      tipo, '
      '      cadastro'
      'from usuario'
      'order by id_usuario')
    Left = 512
    Top = 123
    object QPadraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QPadraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object QPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object QPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DSPadrao: TDataSource
    Left = 600
    Top = 131
  end
end
