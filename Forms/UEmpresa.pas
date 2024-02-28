unit UEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmEmpresa = class(TfrmPadrao)
    QPadraoID_EMPRESA: TIntegerField;
    QPadraoN_FANTASIA: TStringField;
    QPadraoENDERECO: TStringField;
    QPadraoNUMERO: TIntegerField;
    QPadraoBAIRRO: TStringField;
    QPadraoCIDADE: TStringField;
    QPadraoUF: TStringField;
    QPadraoCEP: TStringField;
    QPadraoTELEFONE: TStringField;
    QPadraoCNPJ: TStringField;
    QPadraoEMAIL: TStringField;
    QPadraoLOGO: TBlobField;
    QPadraoCADASTRO: TDateField;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    Label2: TLabel;
    edtFantasia: TDBEdit;
    Label3: TLabel;
    edtEndereco: TDBEdit;
    Label4: TLabel;
    edtNumero: TDBEdit;
    Label5: TLabel;
    edtBairro: TDBEdit;
    Label6: TLabel;
    edtCidade: TDBEdit;
    Label7: TLabel;
    edtEstado: TDBEdit;
    Label8: TLabel;
    edtCep: TDBEdit;
    Label9: TLabel;
    edtTelefone: TDBEdit;
    Label10: TLabel;
    edtCnpj: TDBEdit;
    Label11: TLabel;
    edtEmail: TDBEdit;
    Label12: TLabel;
    edtLogo: TDBImage;
    Label13: TLabel;
    edtCadastro: TDBEdit;
    QPadraoRAZAO_SOCIAL: TStringField;
    Label14: TLabel;
    edtRazao: TDBEdit;
    btnFoto: TBitBtn;
    btnLimpar: TBitBtn;
    OpenDialogImg: TOpenDialog;
    procedure btnNovoClick(Sender: TObject);
    procedure btnFotoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresa: TfrmEmpresa;

implementation

{$R *.dfm}

procedure TfrmEmpresa.btnFotoClick(Sender: TObject);
begin
  QPadrao.Edit;
  OpenDialogImg.Execute;
  edtLogo.Picture.LoadFromFile(OpenDialogImg.FileName);
  QPadrao.Refresh;
  Messagedlg('Imagem inserida com sucesso!', mtInformation,[mbOK],0);
end;

procedure TfrmEmpresa.btnLimparClick(Sender: TObject);
begin
  QPadrao.Edit;
  QPadraoLOGO.AsVariant := null;
  QPadrao.Refresh;
  Messagedlg('Imagem deletada com sucesso!', mtInformation,[mbOK],0);
end;

procedure TfrmEmpresa.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCadastro.text := DateToStr(now);
  edtRazao.SetFocus;
end;

end.
