inherited frmPesqProduto: TfrmPesqProduto
  Caption = 'Pesquisa de Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited mkInicio: TMaskEdit
      Width = 118
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitWidth = 118
    end
    inherited mkFim: TMaskEdit
      Width = 118
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitWidth = 118
    end
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited QPesquisaPadrao: TFDQuery
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
    object QPesquisaPadraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPesquisaPadraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object QPesquisaPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object QPesquisaPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object QPesquisaPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object QPesquisaPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object QPesquisaPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object QPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object QPesquisaPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object QPesquisaPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
