inherited frmFormaPgto: TfrmFormaPgto
  Caption = 'Cadastrar Formas de Pagamentos'
  ClientHeight = 289
  ClientWidth = 840
  ExplicitWidth = 846
  ExplicitHeight = 318
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 168
    Top = 118
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = edtCodigo
  end
  object Label2: TLabel [1]
    Left = 168
    Top = 161
    Width = 59
    Height = 13
    Caption = 'DESCRI'#199#195'O'
    FocusControl = edtDescricao
  end
  object Label3: TLabel [2]
    Left = 328
    Top = 118
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = edtCadastro
  end
  inherited Panel1: TPanel
    Width = 840
    ExplicitLeft = -24
    ExplicitTop = -8
    ExplicitWidth = 955
    inherited btnNovo: TBitBtn
      Left = 86
      ExplicitLeft = 86
    end
    inherited btnDeletar: TBitBtn
      Left = 182
      ExplicitLeft = 182
    end
    inherited btnEditar: TBitBtn
      Left = 278
      ExplicitLeft = 278
    end
    inherited btnGravar: TBitBtn
      Left = 374
      ExplicitLeft = 374
    end
    inherited btnCancelar: TBitBtn
      Left = 470
      ExplicitLeft = 470
    end
    inherited btnAtualizar: TBitBtn
      Left = 566
      ExplicitLeft = 566
    end
    inherited btnPesquisar: TBitBtn
      Left = 662
      ExplicitLeft = 662
    end
  end
  inherited Panel2: TPanel
    Top = 229
    Width = 840
    TabOrder = 2
    ExplicitLeft = 104
    ExplicitTop = 171
    inherited DBNavigator1: TDBNavigator
      Left = 235
      Hints.Strings = ()
      ExplicitLeft = 235
    end
  end
  object edtCodigo: TDBEdit [5]
    Left = 168
    Top = 134
    Width = 134
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object edtDescricao: TDBEdit [6]
    Left = 168
    Top = 177
    Width = 500
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DSPadrao
    TabOrder = 1
  end
  object edtCadastro: TDBEdit [7]
    Left = 328
    Top = 134
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    Enabled = False
    TabOrder = 4
  end
  inherited QPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'select '
      '   id_forma_pgto,'
      '   descricao,'
      '   cadastro'
      'from forma_pgto')
    Left = 610
    Top = 107
    object QPadraoID_FORMA_PGTO: TFDAutoIncField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object QPadraoDESCRICAO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
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
    Left = 546
    Top = 107
  end
end
