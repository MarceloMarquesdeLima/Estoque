unit UProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmProduto = class(TfrmPadrao)
    QPadraoID_PRODUTO: TFDAutoIncField;
    QPadraoPRODUTO_DESCRICAO: TStringField;
    QPadraoVL_CUSTO: TFMTBCDField;
    QPadraoVL_VENDA: TFMTBCDField;
    QPadraoESTOQUE: TFMTBCDField;
    QPadraoESTOQUE_MIN: TFMTBCDField;
    QPadraoUNIDADE: TStringField;
    QPadraoCADASTRO: TDateField;
    QPadraoID_FORNECEDOR: TIntegerField;
    QPadraoNOME: TStringField;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    Label2: TLabel;
    edtProdDescricao: TDBEdit;
    Label3: TLabel;
    edtCusto: TDBEdit;
    Label4: TLabel;
    edtVenda: TDBEdit;
    Label5: TLabel;
    EdtEstoque: TDBEdit;
    Label6: TLabel;
    edtMinimo: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtCadastro: TDBEdit;
    Label9: TLabel;
    edtCodFornecedor: TDBEdit;
    Label10: TLabel;
    edtNomeFornecedor: TDBEdit;
    dbCombo: TDBComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

uses UPesqProduto;

procedure TfrmProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCadastro.Text := DateTostr(now);
  edtProdDescricao.SetFocus;
end;

procedure TfrmProduto.btnPesquisarClick(Sender: TObject);
begin
  frmPesqProduto := TfrmPesqProduto.Create(self);
  frmPesqProduto.ShowModal;
  try

  finally
    frmPesqProduto.Free;
    frmPesqProduto := nil;
  end;
end;

end.
