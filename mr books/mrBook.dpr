program mrBook;

uses
  Vcl.Forms,
  telaPrincipal in 'telaPrincipal.pas' {frmPrincipal},
  conexao in 'conexao.pas' {dmMrBooks: TDataModule},
  cadastroCliente in 'cadastroCliente.pas' {frmCadastroCliente},
  cadastroProduto in 'cadastroProduto.pas' {frmCadastroProduto},
  cadastroCompra in 'cadastroCompra.pas' {frmCadastroCompra},
  cadastroFuncionario in 'cadastroFuncionario.pas' {frmCadastroFuncionario},
  login in 'login.pas' {frmLogin},
  consultaFuncionario in 'consultaFuncionario.pas' {frmConsultaFuncionario},
  consultaCompra in 'consultaCompra.pas' {frmConsultaCompra},
  consultaCliente in 'consultaCliente.pas' {frmConsultaCliente},
  consultaProduto in 'consultaProduto.pas' {frmConsultaProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TdmMrBooks, dmMrBooks);
  Application.CreateForm(TfrmConsultaProduto, frmConsultaProduto);
  Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
  Application.CreateForm(TfrmConsultaCompra, frmConsultaCompra);
  Application.CreateForm(TfrmConsultaFuncionario, frmConsultaFuncionario);
  Application.Run;
end.
