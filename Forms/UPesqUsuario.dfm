inherited frmPesquisaUsuario: TfrmPesquisaUsuario
  Caption = 'Pesquisa de Usu'#225'rio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cmbItemPesquisa: TComboBox
      OnChange = cmbItemPesquisaChange
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'PER'#205'ODO'
        'TODOS')
    end
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
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'ID_USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited QPesquisaPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '   ID_USUARIO,'
      '   NOME,'
      '   TIPO,'
      '   CADASTRO  '
      'FROM USUARIO'
      'ORDER BY ID_USUARIO')
    object QPesquisaPadraoID_USUARIO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPesquisaPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QPesquisaPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object QPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
