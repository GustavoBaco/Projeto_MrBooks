object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmCadastroCliente'
  ClientHeight = 497
  ClientWidth = 769
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 341
    Top = 64
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label3: TLabel
    Left = 64
    Top = 120
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label4: TLabel
    Left = 341
    Top = 120
    Width = 23
    Height = 13
    Caption = 'CEP:'
  end
  object Label5: TLabel
    Left = 64
    Top = 176
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object Label6: TLabel
    Left = 197
    Top = 176
    Width = 37
    Height = 13
    Caption = 'Celular:'
  end
  object Label7: TLabel
    Left = 632
    Top = 120
    Width = 37
    Height = 13
    Caption = 'Estado:'
  end
  object Label8: TLabel
    Left = 464
    Top = 120
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object Label9: TLabel
    Left = 64
    Top = 8
    Width = 86
    Height = 13
    Caption = 'C'#243'digo do cliente:'
  end
  object dbedtcodcliente: TDBEdit
    Left = 64
    Top = 27
    Width = 46
    Height = 21
    DataField = 'cod_cliente'
    TabOrder = 0
  end
  object dbedtnome: TDBEdit
    Left = 64
    Top = 83
    Width = 233
    Height = 21
    DataField = 'nome_cliente'
    TabOrder = 1
  end
  object dbedtcpf: TDBEdit
    Left = 341
    Top = 83
    Width = 156
    Height = 21
    DataField = 'cpf_cliente'
    TabOrder = 2
  end
  object dbedtendereco: TDBEdit
    Left = 64
    Top = 139
    Width = 233
    Height = 21
    DataField = 'endereco_cliente'
    TabOrder = 3
  end
  object dbedtcep: TDBEdit
    Left = 341
    Top = 139
    Width = 100
    Height = 21
    DataField = 'cep_cliente'
    TabOrder = 4
  end
  object dbeditcidade: TDBEdit
    Left = 464
    Top = 139
    Width = 145
    Height = 21
    DataField = 'cidade_cliente'
    TabOrder = 5
  end
  object dbedtestado: TDBEdit
    Left = 632
    Top = 139
    Width = 37
    Height = 21
    DataField = 'estado_cliente'
    TabOrder = 6
  end
  object dbedttelefone: TDBEdit
    Left = 64
    Top = 195
    Width = 105
    Height = 21
    DataField = 'tel_cliente'
    TabOrder = 7
  end
  object dbedtcelular: TDBEdit
    Left = 197
    Top = 195
    Width = 121
    Height = 21
    DataField = 'cel_cliente'
    TabOrder = 8
  end
  object btncadastrar: TBitBtn
    Left = 64
    Top = 230
    Width = 86
    Height = 25
    Caption = 'Cadastrar'
    Kind = bkYes
    NumGlyphs = 2
    TabOrder = 9
    OnClick = btncadastrarClick
  end
  object btnCancelar: TBitBtn
    Left = 298
    Top = 230
    Width = 86
    Height = 25
    Caption = 'Cancelar'
    Kind = bkAbort
    NumGlyphs = 2
    TabOrder = 10
    OnClick = btnCancelarClick
  end
  object btnSalvar: TBitBtn
    Left = 178
    Top = 230
    Width = 86
    Height = 25
    Caption = 'Salvar'
    Kind = bkAll
    NumGlyphs = 2
    TabOrder = 11
    OnClick = btnSalvarClick
  end
  object btnExcluir: TBitBtn
    Left = 555
    Top = 230
    Width = 86
    Height = 25
    Caption = 'Excluir'
    Kind = bkNo
    NumGlyphs = 2
    TabOrder = 12
    OnClick = btnExcluirClick
  end
  object btnAlterar: TBitBtn
    Left = 426
    Top = 230
    Width = 86
    Height = 25
    Caption = 'Alterar'
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 13
    OnClick = btnAlterarClick
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 272
    Width = 637
    Height = 217
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
