unit UPadraoPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UDM;

type
  TfrmPadraoPesquisa = class(TForm)
    Panel1: TPanel;
    cmbItemPesquisa: TComboBox;
    Label1: TLabel;
    edtNome: TEdit;
    mkInicio: TMaskEdit;
    mkFim: TMaskEdit;
    lblNome: TLabel;
    lblDtInicio: TLabel;
    lblDtFim: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DSPesquisaPadrao: TDataSource;
    btnPesquisar: TBitBtn;
    btnTransferir: TBitBtn;
    btnImprimir: TBitBtn;
    QPesquisaPadrao: TFDQuery;
    procedure cmbItemPesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadraoPesquisa: TfrmPadraoPesquisa;

implementation

{$R *.dfm}

procedure TfrmPadraoPesquisa.cmbItemPesquisaChange(Sender: TObject);
begin
  case cmbItemPesquisa.ItemIndex of
    0:begin
      lblNome.Visible := true;
      lblNome.Caption := 'Digite o C�digo!';
      edtNome.Visible := true;
      edtNome.SetFocus;
      lblDtInicio.Visible := false;
      mkInicio.Visible := false;
      lblDtFim.Visible := false;
      mkFim.Visible := false;
    end;
    1:begin
      lblNome.Visible := true;
      lblNome.Caption := 'Digite o Nome!';
      edtNome.Visible := true;
      edtNome.SetFocus;
      lblDtInicio.Visible := false;
      mkInicio.Visible := false;
      lblDtFim.Visible := false;
      mkFim.Visible := false;
    end;
    2:begin
      lblNome.Visible := false;
      edtNome.Visible := false;
      mkInicio.Visible := true;
      lblDtFim.Visible := false;
      mkFim.Visible := false;
      mkInicio.SetFocus;
      lblDtInicio.Visible := true;
      lblDtInicio.Caption := 'Digite a Data de Cadastro!';
    end;
    3:begin
      lblNome.Visible := false;
      edtNome.Visible := false;
      lblDtInicio.Visible := true;
      mkInicio.Visible := true;
      lblDtFim.Visible := false;
      mkFim.Visible := true;
      mkInicio.SetFocus;
      lblDtInicio.Caption := 'Digite Per�odo da Pesquisa!';
    end;
    4:begin
      lblNome.Visible := TRUE;
      lblNome.Caption := 'Exibindo todos os registros!';
      edtNome.Visible := false;
      lblDtInicio.Visible := false;
      mkInicio.Visible := false;
      lblDtFim.Visible := false;
      mkFim.Visible := false;
    end;

  end;
end;

procedure TfrmPadraoPesquisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      Key := #0;
      Perform(wm_nextDlgCtl,0,0);
    end;
end;

end.
