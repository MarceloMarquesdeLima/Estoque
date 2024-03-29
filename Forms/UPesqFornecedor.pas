unit UPesqFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadraoPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesqFornecedor = class(TfrmPadraoPesquisa)
    QPesquisaPadraoID_FORNECEDOR: TIntegerField;
    QPesquisaPadraoNOME: TStringField;
    QPesquisaPadraoENDERECO: TStringField;
    QPesquisaPadraoNUMERO: TIntegerField;
    QPesquisaPadraoBAIRRO: TStringField;
    QPesquisaPadraoCIDADE: TStringField;
    QPesquisaPadraoUF: TStringField;
    QPesquisaPadraoCEP: TStringField;
    QPesquisaPadraoTELEFONE: TStringField;
    QPesquisaPadraoCNPJ: TStringField;
    QPesquisaPadraoEMAIL: TStringField;
    QPesquisaPadraoCADASTRO: TDateField;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqFornecedor: TfrmPesqFornecedor;

implementation

{$R *.dfm}

procedure TfrmPesqFornecedor.btnPesquisarClick(Sender: TObject);
begin
  QPesquisaPadrao.Close;
  QPesquisaPadrao.SQL.Add('');
  QPesquisaPadrao.Params.Clear;
  QPesquisaPadrao.SQL.Clear;
  QPesquisaPadrao.SQL.Add('SELECT ID_FORNECEDOR, NOME, ENDERECO, NUMERO, BAIRRO, CIDADE, UF, CEP, TELEFONE, CNPJ, EMAIL, CADASTRO FROM FORNECEDOR');
  case cmbItemPesquisa.ItemIndex of
      0:begin
        QPesquisaPadrao.SQL.Add('WHERE ID_FORNECEDOR =:PID_FORNECEDOR');
        QPesquisaPadrao.ParamByName('PID_FORNECEDOR').AsString := edtNome.Text;
      end;
      1:begin
        QPesquisaPadrao.SQL.Add('WHERE NOME LIKE :PNOME');
        QPesquisaPadrao.ParamByName('PNOME').AsString := '%' + edtNome.Text + '%';
      end;
      2:begin
        QPesquisaPadrao.SQL.Add('WHERE CADASTRO =:PCADASTRO');
        QPesquisaPadrao.ParamByName('PCADASTRO').AsDate := strToDate(mkInicio.Text);
      end;
      3:begin
        QPesquisaPadrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
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
       Messagedlg('Registro n�o encontrado!',MtInformation,[mbOk],0);
    end
    else
    abort;
end;

end.
