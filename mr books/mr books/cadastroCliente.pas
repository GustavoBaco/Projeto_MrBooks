unit cadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

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
    dbedtcodcliente: TDBEdit;
    dbedtnome: TDBEdit;
    dbedtcpf: TDBEdit;
    dbedtendereco: TDBEdit;
    dbedtcep: TDBEdit;
    dbeditcidade: TDBEdit;
    dbedtestado: TDBEdit;
    dbedttelefone: TDBEdit;
    dbedtcelular: TDBEdit;
    btncadastrar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    DBGrid1: TDBGrid;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btncadastrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses conexao, telaprincipal;




procedure TfrmCadastroCliente.btnAlterarClick(Sender: TObject);
begin
dmMrBooks.queryCliente.Edit;
btnExcluir.Enabled:= false;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=false;
end;

procedure TfrmCadastroCliente.btncadastrarClick(Sender: TObject);
begin
dmMrBooks.queryCliente.append;
btnExcluir.Enabled:= false;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=false;
end;

procedure TfrmCadastroCliente.btnCancelarClick(Sender: TObject);
begin
dmMrBooks.queryCliente.Cancel;
btnExcluir.Enabled:= false;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=false;
end;

procedure TfrmCadastroCliente.btnExcluirClick(Sender: TObject);
begin
dmMrBooks.queryCliente.Delete;
btnExcluir.Enabled:= false;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=false;
end;

procedure TfrmCadastroCliente.btnSalvarClick(Sender: TObject);
begin
dmMrBooks.queryCliente.post;
btnExcluir.Enabled:= false;
btnCancelar.Enabled:= true;
btnSalvar.Enabled:= true;
btnCadastrar.Enabled:=false;
end;

procedure TfrmCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
frmCadastroCliente:=nil;
end;

end.
