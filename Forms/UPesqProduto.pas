unit UPesqProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadraoPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesqProduto = class(TfrmPadraoPesquisa)
    QPesquisaPadraoID_PRODUTO: TIntegerField;
    QPesquisaPadraoPRODUTO_DESCRICAO: TStringField;
    QPesquisaPadraoVL_CUSTO: TFMTBCDField;
    QPesquisaPadraoVL_VENDA: TFMTBCDField;
    QPesquisaPadraoESTOQUE: TFMTBCDField;
    QPesquisaPadraoESTOQUE_MIN: TFMTBCDField;
    QPesquisaPadraoUNIDADE: TStringField;
    QPesquisaPadraoCADASTRO: TDateField;
    QPesquisaPadraoID_FORNECEDOR: TIntegerField;
    QPesquisaPadraoNOME: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqProduto: TfrmPesqProduto;

implementation

{$R *.dfm}

procedure TfrmPesqProduto.btnPesquisarClick(Sender: TObject);
begin
  QPesquisaPadrao.Close;
  QPesquisaPadrao.SQL.Add('');
  QPesquisaPadrao.Params.Clear;
  QPesquisaPadrao.SQL.Clear;
  QPesquisaPadrao.SQL.Add('SELECT A.ID_PRODUTO,A.PRODUTO_DESCRICAO,A.VL_CUSTO,A.VL_VENDA,A.ESTOQUE,A.ESTOQUE_MIN,A.UNIDADE,A.CADASTRO,A.ID_FORNECEDOR,B.NOME FROM PRODUTO A, FORNECEDOR B');
  case cmbItemPesquisa.ItemIndex of
      0:begin
        QPesquisaPadrao.SQL.Add('WHERE A.ID_PRODUTO =:PID_PRODUTO');
        QPesquisaPadrao.ParamByName('PID_PRODUTO').AsString := edtNome.Text;
      end;
      1:begin
        QPesquisaPadrao.SQL.Add('WHERE PRODUTO_DESCRICAO LIKE :PPRODUTO_DESCRICAO');
        QPesquisaPadrao.ParamByName('PPRODUTO_DESCRICAO').AsString := '%' + edtNome.Text + '%';
      end;
      2:begin
        QPesquisaPadrao.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
        QPesquisaPadrao.ParamByName('PCADASTRO').AsDate := strToDate(mkInicio.Text);
      end;
      3:begin
        QPesquisaPadrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
        QPesquisaPadrao.ParamByName('PINICIO').AsDate := strToDate(mkInicio.Text);
        QPesquisaPadrao.ParamByName('PFIM').AsDate := strToDate(mkFim.Text);
      end;
      4:begin
        QPesquisaPadrao.SQL.Add('ORDER BY NOME');
      end;
  end;
  QPesquisaPadrao.Open;
  if QPesquisaPadrao.IsEmpty then
    begin
       Messagedlg('Registro não encontrado!',MtInformation,[mbOk],0);
    end
    else
    abort;
end;

end.
