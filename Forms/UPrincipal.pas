unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, UCliente, UEmpresa, UFormaPgto, UFornecedor, UProduto, UUsuario;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnUsuario: TSpeedButton;
    btnEmpresa: TSpeedButton;
    btnCliente: TSpeedButton;
    btnFornecedor: TSpeedButton;
    btnProduto: TSpeedButton;
    btnFormaPgto: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    btnClose: TSpeedButton;
    StatusBar: TStatusBar;
    Timer: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Empresa1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produto1: TMenuItem;
    FrmaPgto1: TMenuItem;
    Movimento1: TMenuItem;
    Compra1: TMenuItem;
    Venda1: TMenuItem;
    Relatrio1: TMenuItem;
    ListadeUsurio1: TMenuItem;
    ListaFornecedor1: TMenuItem;
    ListaCliente1: TMenuItem;
    ListaProduto1: TMenuItem;
    ListaCompra1: TMenuItem;
    ListaCompra2: TMenuItem;
    Sobre1: TMenuItem;
    procedure TimerTimer(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure AbreTelaUsuario();
    procedure AbreTelaEmpresa();
    procedure AbreTelaCliente();
    procedure AbreTelaFornecedor();
    procedure AbreTelaProduto();
    procedure AbreTelaFormaPgto();
    procedure Usurio1Click(Sender: TObject);
    procedure btnEmpresaClick(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure btnFormaPgtoClick(Sender: TObject);
    procedure FrmaPgto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.AbreTelaCliente;
begin
   frmCliente := TfrmCliente.Create(self);
  frmCliente.ShowModal;
  try

  finally
     frmCliente.Free;
     frmCliente := nil;
  end;
end;

procedure TfrmPrincipal.AbreTelaEmpresa;
begin
  frmEmpresa := TfrmEmpresa.Create(self);
  frmEmpresa.ShowModal;
  try

  finally
     frmEmpresa.Free;
     frmEmpresa := nil;
  end;
end;

procedure TfrmPrincipal.AbreTelaFormaPgto;
begin
  frmFormaPgto := TfrmFormaPgto.Create(self);
  frmFormaPgto.ShowModal;
  try

  finally
    frmFormaPgto.Free;
    frmFormaPgto := nil;
  end;
end;

procedure TfrmPrincipal.AbreTelaFornecedor;
begin
  frmFornecedor := TfrmFornecedor.Create(self);
  frmFornecedor.ShowModal;
  try

  finally
    frmFornecedor.Free;
    frmFornecedor := nil;
  end;
end;

procedure TfrmPrincipal.AbreTelaProduto;
begin
  frmProduto := TfrmProduto.Create(self);
  frmProduto.ShowModal;
  try

  finally
     frmProduto.Free;
     frmProduto := nil;
  end;
end;

procedure TfrmPrincipal.AbreTelaUsuario;
begin
  frmUsuario := TfrmUsuario.Create(self);
  frmUsuario.ShowModal;
  try

  finally
     frmUsuario.Free;
     frmUsuario := nil;
  end;
end;

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
  AbreTelaCliente;
end;

procedure TfrmPrincipal.btnCloseClick(Sender: TObject);
begin
  if messagedlg('Deseja sair do sistema?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      application.Terminate;
    end
    else
      abort;

  close;
end;

procedure TfrmPrincipal.btnUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  AbreTelaCliente;
end;

procedure TfrmPrincipal.btnEmpresaClick(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TfrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure TfrmPrincipal.FrmaPgto1Click(Sender: TObject);
begin
  AbreTelaFormaPgto;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
   AbreTelaProduto;
end;

procedure TfrmPrincipal.btnFormaPgtoClick(Sender: TObject);
begin
  AbreTelaFormaPgto;
end;

procedure TfrmPrincipal.btnFornecedorClick(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure TfrmPrincipal.btnProdutoClick(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  Statusbar.Panels[0].Text:=DateTostr(now);
  Statusbar.Panels[1].Text:=TimeTostr(now);
  Statusbar.Panels[2].Text:='Seja bem vindo ao Sistema!';
end;

procedure TfrmPrincipal.Usurio1Click(Sender: TObject);
begin
  AbreTelaUsuario;
end;

end.
