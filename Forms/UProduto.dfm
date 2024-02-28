inherited frmProduto: TfrmProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 374
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 247
    Top = 117
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = edtCodigo
  end
  object Label2: TLabel [1]
    Left = 247
    Top = 157
    Width = 59
    Height = 13
    Caption = 'DESCRI'#199#195'O'
    FocusControl = edtProdDescricao
  end
  object Label3: TLabel [2]
    Left = 247
    Top = 242
    Width = 86
    Height = 13
    Caption = 'VALOR DE CUSTO'
    FocusControl = edtCusto
  end
  object Label4: TLabel [3]
    Left = 349
    Top = 242
    Width = 85
    Height = 13
    Caption = 'VALOR DE VENDA'
    FocusControl = edtVenda
  end
  object Label5: TLabel [4]
    Left = 559
    Top = 242
    Width = 47
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = EdtEstoque
  end
  object Label6: TLabel [5]
    Left = 663
    Top = 239
    Width = 89
    Height = 13
    Caption = 'ESTOQUE M'#205'NIMO'
    FocusControl = edtMinimo
  end
  object Label7: TLabel [6]
    Left = 455
    Top = 242
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label8: TLabel [7]
    Left = 408
    Top = 117
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = edtCadastro
  end
  object Label9: TLabel [8]
    Left = 247
    Top = 199
    Width = 113
    Height = 13
    Caption = 'C'#211'DIGO FORNECEDOR'
    FocusControl = edtCodFornecedor
  end
  object Label10: TLabel [9]
    Left = 408
    Top = 199
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = edtNomeFornecedor
  end
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 314
    TabOrder = 10
    ExplicitTop = 314
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object edtCodigo: TDBEdit [12]
    Left = 247
    Top = 133
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_PRODUTO'
    DataSource = DSPadrao
    TabOrder = 11
  end
  object edtProdDescricao: TDBEdit [13]
    Left = 247
    Top = 173
    Width = 626
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = DSPadrao
    TabOrder = 1
  end
  object edtCusto: TDBEdit [14]
    Left = 247
    Top = 258
    Width = 86
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VL_CUSTO'
    DataSource = DSPadrao
    TabOrder = 4
  end
  object edtVenda: TDBEdit [15]
    Left = 349
    Top = 258
    Width = 86
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VL_VENDA'
    DataSource = DSPadrao
    TabOrder = 5
  end
  object EdtEstoque: TDBEdit [16]
    Left = 559
    Top = 258
    Width = 86
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESTOQUE'
    DataSource = DSPadrao
    TabOrder = 7
  end
  object edtMinimo: TDBEdit [17]
    Left = 663
    Top = 258
    Width = 86
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESTOQUE_MIN'
    DataSource = DSPadrao
    TabOrder = 8
  end
  object edtCadastro: TDBEdit [18]
    Left = 408
    Top = 133
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CADASTRO'
    DataSource = DSPadrao
    Enabled = False
    TabOrder = 9
  end
  object edtCodFornecedor: TDBEdit [19]
    Left = 247
    Top = 215
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_FORNECEDOR'
    DataSource = DSPadrao
    TabOrder = 2
  end
  object edtNomeFornecedor: TDBEdit [20]
    Left = 408
    Top = 215
    Width = 465
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DSPadrao
    TabOrder = 3
  end
  object dbCombo: TDBComboBox [21]
    Left = 455
    Top = 258
    Width = 87
    Height = 21
    DataField = 'UNIDADE'
    DataSource = DSPadrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'P'#199
      'LT'
      'GL'
      'UN')
    TabOrder = 6
  end
  inherited QPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_PRODUTO'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'SELECT'
      '   A.ID_PRODUTO,'
      '   A.PRODUTO_DESCRICAO,'
      '   A.VL_CUSTO,'
      '   A.VL_VENDA,'
      '   A.ESTOQUE,'
      '   A.ESTOQUE_MIN,'
      '   A.UNIDADE,'
      '   A.CADASTRO,'
      '   A.ID_FORNECEDOR,'
      '   B.NOME'
      'FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.ID_FORNECEDOR = B.ID_FORNECEDOR')
    Left = 880
    Top = 123
    object QPadraoID_PRODUTO: TFDAutoIncField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPadraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object QPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object QPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object QPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object QPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object QPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object QPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object QPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited DSPadrao: TDataSource
    Left = 952
    Top = 123
  end
end
