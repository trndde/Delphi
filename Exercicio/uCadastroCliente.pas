unit uCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, StdCtrls, uClasses, uDataModule, uGrCliente;

type
  TfrCadastroCliente = class(TfrCadastroPadrao)
    edEndereco: TEdit;
    lbEndereco: TLabel;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroCliente: TfrCadastroCliente;

implementation

{$R *.dfm}

procedure TfrCadastroCliente.btSalvarClick(Sender: TObject);
var
  wCliente : TCliente;
begin
  inherited;
  wCliente :=  TCliente.Create;

  wCliente.wCodigoCliente := edCodigo.Text;
  wCliente.wNomeCliente := edNome.Text;
  wCliente.wEnderecoCliente := edEndereco.Text;

  dmCadastro.pCriartbCliente;

  dmCadastro.tbCadastroCliente.Insert;
  dmCadastro.tbCadastroClientebdCodigo.AsString := wCliente.wCodigoCliente;
  dmCadastro.tbCadastroClientebdNome.AsString := wCliente.wNomeCliente;
  dmCadastro.tbCadastroClientebdEndereco.AsString := wCliente.wEnderecoCliente;
  dmCadastro.tbCadastroCliente.Post;

end;

procedure TfrCadastroCliente.btConsultarClick(Sender: TObject);
var
  wMostrarTela : TfrGridCliente;
begin
  inherited;
  wMostrarTela := TfrGridCliente.Create(Self);
  wMostrarTela.Show;
end;

end.



