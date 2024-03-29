unit UFormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmFormaPgto = class(TfrmPadrao)
    QPadraoID_FORMA_PGTO: TFDAutoIncField;
    QPadraoDESCRICAO: TStringField;
    QPadraoCADASTRO: TDateField;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    Label2: TLabel;
    edtDescricao: TDBEdit;
    Label3: TLabel;
    edtCadastro: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormaPgto: TfrmFormaPgto;

implementation

{$R *.dfm}

procedure TfrmFormaPgto.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCadastro.Text := DateTostr(now);
  edtDescricao.SetFocus;
end;

end.
