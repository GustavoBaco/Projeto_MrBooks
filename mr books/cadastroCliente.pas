unit cadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmCadastroCliente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdCodigo: TDBEdit;
    DBEdNome: TDBEdit;
    DBEdCpf: TDBEdit;
    DBEdEndereco: TDBEdit;
    DBEdCep: TDBEdit;
    DBEdCidade: TDBEdit;
    DBEdEstado: TDBEdit;
    DBEdTelefone: TDBEdit;
    DBEdCelular: TDBEdit;
    btnCadastrar: TImage;
    btnSalvar: TImage;
    btnAlterar: TImage;
    btnExcluir: TImage;
    btnCancelar: TImage;
    DBGrid1: TDBGrid;
    btnConsultarCliente: TImage;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btncadastrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses conexao, telaPrincipal, consultaCliente;




procedure TfrmCadastroCliente.btnAlterarClick(Sender: TObject);
begin
dmMrBooks.queryCliente.Edit;
btnExcluir.Enabled:= false;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=true;
end;

procedure TfrmCadastroCliente.btncadastrarClick(Sender: TObject);
begin
dmMrBooks.queryCliente.append;
btnExcluir.Enabled:= true;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=true;
end;

procedure TfrmCadastroCliente.btnCancelarClick(Sender: TObject);
begin
dmMrBooks.queryCliente.Cancel;
btnExcluir.Enabled:= true;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=true;
end;

procedure TfrmCadastroCliente.btnConsultarClienteClick(Sender: TObject);
begin
frmConsultaCliente.Show;
end;

procedure TfrmCadastroCliente.btnExcluirClick(Sender: TObject);
begin
dmMrBooks.queryCliente.Delete;
btnExcluir.Enabled:= true;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=true;
end;

procedure TfrmCadastroCliente.btnSalvarClick(Sender: TObject);
begin
dmMrBooks.queryCliente.post;
btnExcluir.Enabled:= true;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=true;
end;

procedure TfrmCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
frmCadastroCliente:=nil;
end;

end.
