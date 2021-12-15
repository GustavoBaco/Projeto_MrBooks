unit cadastroFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroFuncionario = class(TForm)
    lblcodfuncio: TLabel;
    lblnomefuncionario: TLabel;
    lblloginfuncio: TLabel;
    Label4: TLabel;
    DBEdCodigo: TDBEdit;
    DBEdSenha: TDBEdit;
    DBEdNome: TDBEdit;
    DBEdLogin: TDBEdit;
    btnCadastrar: TImage;
    btnSalvar: TImage;
    btnAlterar: TImage;
    btnExcluir: TImage;
    btnCancelar: TImage;
    DBGrid1: TDBGrid;
    consultarFuncionario: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure consultarFuncionarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroFuncionario: TfrmCadastroFuncionario;

implementation

{$R *.dfm}

uses conexao, consultaFuncionario;

procedure TfrmCadastroFuncionario.btnAlterarClick(Sender: TObject);
begin
dmMrBooks.queryFuncionario.edit;
btnSalvar.Enabled:= True;
btnAlterar.Enabled:= true;
btnExcluir.Enabled:=true;
btnCadastrar.Enabled:= true;
btnCancelar.Enabled:= True;
end;

procedure TfrmCadastroFuncionario.btnCancelarClick(Sender: TObject);
begin
dmMrBooks.queryFuncionario.cancel;
btnSalvar.Enabled:= True;
btnAlterar.Enabled:= True;
btnExcluir.Enabled:=True;
btnCadastrar.Enabled:= True;
btnCancelar.Enabled:= true;
end;

procedure TfrmCadastroFuncionario.btnExcluirClick(Sender: TObject);
begin
dmMrBooks.queryFuncionario.delete;
btnSalvar.Enabled:= true;
btnAlterar.Enabled:= True;
btnExcluir.Enabled:=True;
btnCadastrar.Enabled:= True;
btnCancelar.Enabled:= True;
end;

procedure TfrmCadastroFuncionario.btnCadastrarClick(Sender: TObject);
begin
dmMrBooks.queryFuncionario.append;
btnSalvar.Enabled:= True;
btnAlterar.Enabled:= True;
btnExcluir.Enabled:=True;
btnCadastrar.Enabled:= True;
btnCancelar.Enabled:= True;
end;

procedure TfrmCadastroFuncionario.btnSalvarClick(Sender: TObject);
begin
dmMrBooks.queryFuncionario.post;
dmMrBooks.queryFuncionario.Close;
dmMrBooks.queryFuncionario.Open;
btnSalvar.Enabled:= true;
btnAlterar.Enabled:= True;
btnExcluir.Enabled:=True;
btnCadastrar.Enabled:= True;
btnCancelar.Enabled:= True;
end;

procedure TfrmCadastroFuncionario.consultarFuncionarioClick(Sender: TObject);
begin
frmConsultaFuncionario.Show;
end;

procedure TfrmCadastroFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmCadastroFuncionario:=nil;
end;

end.
