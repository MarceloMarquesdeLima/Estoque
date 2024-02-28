inherited frmPesqCliente: TfrmPesqCliente
  Caption = 'Pesquisa de Cliente'
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
      'SELECT '
      ' ID_CLIENTE,'
      ' NOME,'
      ' ENDERECO,'
      ' NUMERO,'
      ' BAIRRO,'
      ' CIDADE,'
      ' UF,'
      ' CEP,'
      ' TELEFONE,'
      ' CPF,'
      ' EMAIL,'
      ' CADASTRO'
      'FROM CLIENTE')
    object QPesquisaPadraoID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPesquisaPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QPesquisaPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object QPesquisaPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object QPesquisaPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object QPesquisaPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object QPesquisaPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QPesquisaPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object QPesquisaPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object QPesquisaPadraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 16
    end
    object QPesquisaPadraoEMAIL: TStringField
      DisplayLabel = 'E-MAIL'
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object QPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
