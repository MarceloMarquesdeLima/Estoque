program ControleEstoque;

uses
  Vcl.Forms,
  UPrincipal in '..\Forms\UPrincipal.pas' {frmPrincipal},
  UDM in '..\Forms\UDM.pas' {DM: TDataModule},
  UPadrao in '..\Forms\UPadrao.pas' {frmPadrao},
  UUsuario in '..\Forms\UUsuario.pas' {frmUsuario},
  UEmpresa in '..\Forms\UEmpresa.pas' {frmEmpresa},
  UCliente in '..\Forms\UCliente.pas' {frmCliente},
  UFornecedor in '..\Forms\UFornecedor.pas' {frmFornecedor},
  UProduto in '..\Forms\UProduto.pas' {frmProduto},
  UPadraoPesquisa in '..\Forms\UPadraoPesquisa.pas' {frmPadraoPesquisa},
  UFormaPgto in '..\Forms\UFormaPgto.pas' {frmFormaPgto},
  UPesqUsuario in '..\Forms\UPesqUsuario.pas' {frmPesquisaUsuario},
  UPesqCliente in '..\Forms\UPesqCliente.pas' {frmPesqCliente},
  UPesqFornecedor in '..\Forms\UPesqFornecedor.pas' {frmPesqFornecedor},
  UPesqProduto in '..\Forms\UPesqProduto.pas' {frmPesqProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPesquisaUsuario, frmPesquisaUsuario);
  Application.CreateForm(TfrmPesqCliente, frmPesqCliente);
  Application.CreateForm(TfrmPesqFornecedor, frmPesqFornecedor);
  Application.CreateForm(TfrmPesqProduto, frmPesqProduto);
  Application.Run;
end.
