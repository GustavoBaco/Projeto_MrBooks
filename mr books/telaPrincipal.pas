
unit telaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    Image8: TImage;
    Image1: TImage;
    btnProduto: TImage;
    btnCompras: TImage;
    btnCliente: TImage;
    btnFuncionario: TImage;
    btnSair: TImage;
    Panel3: TPanel;
    Image5: TImage;
    Image3: TImage;
    procedure btnProdutoClick(Sender: TObject);
    procedure btnComprasClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnFuncionarioClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses cadastroProduto, cadastroCompra, cadastroCliente, cadastroFuncionario, login;

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
if frmCadastroCliente=nil then
   frmCadastroCliente:=TfrmCadastroCliente.Create(Self);
      frmCadastroCliente.Show;

       if frmCadastroCompra<>nil then
         frmCadastroCompra.Close;

       if frmCadastroProduto<>nil then
       frmCadastroProduto.Close;

       if frmCadastroFuncionario<>nil then
      frmCadastroFuncionario.Close;
end;

procedure TfrmPrincipal.btnComprasClick(Sender: TObject);
begin
if frmCadastroCompra=nil then
   frmCadastroCompra:=TfrmCadastroCompra.Create(Self);
      frmCadastroCompra.Show;

      if frmCadastroCliente<>nil then
      frmCadastroCliente.Close;

       if frmCadastroProduto<>nil then
       frmCadastroProduto.Close;

       if frmCadastroFuncionario<>nil then
       frmCadastroFuncionario.Close;
end;

procedure TfrmPrincipal.btnFuncionarioClick(Sender: TObject);
begin
   if frmCadastroFuncionario=nil then
    frmCadastroFuncionario:=TfrmCadastroFuncionario.Create(Self);
      frmCadastroFuncionario.Show;

        if frmCadastroCompra<>nil then
        frmCadastroCompra.Close;

      if frmCadastroCliente<>nil then
      frmCadastroCliente.Close;

       if frmCadastroProduto<>nil then
       frmCadastroProduto.Close;
end;

procedure TfrmPrincipal.btnProdutoClick(Sender: TObject);
begin
if frmCadastroProduto=nil then
    frmCadastroProduto:=TfrmCadastroProduto.Create(Self);
      frmCadastroProduto.Show;

     if frmCadastroCompra<>nil then
      frmCadastroCompra.Close;

      if frmCadastroCliente<>nil then
      frmCadastroCliente.Close;

       if frmCadastroFuncionario<>nil then
      frmCadastroFuncionario.Close;


end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
frmPrincipal.Close;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
frmLogin.ShowModal;
end;

end.
