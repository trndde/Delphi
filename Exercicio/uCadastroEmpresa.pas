unit uCadastroEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, StdCtrls, uClasses, uDataModule, uGrEmpresa;

type
  TfrCadastroEmpresa = class(TfrCadastroPadrao)
    edCnpj: TEdit;
    lbCnpj: TLabel;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroEmpresa: TfrCadastroEmpresa;

implementation

{$R *.dfm}

procedure TfrCadastroEmpresa.btSalvarClick(Sender: TObject);
var
  wEmpresa : TEmpresa;
begin
  inherited;
  wEmpresa :=  TEmpresa.Create;

  wEmpresa.wEmpresaCodigo := edCodigo.Text;
  wEmpresa.wEmpresaNome := edNome.Text;
  wEmpresa.wEmpresaCnpj := edCnpj.Text;

  dmCadastro.pCriartbEmpresa;

  dmCadastro.tbCadastroEmpresa.Insert;
  dmCadastro.tbCadastroEmpresabdCodigo.AsString := wEmpresa.wEmpresaCodigo;
  dmCadastro.tbCadastroEmpresabdNome.AsString := wEmpresa.wEmpresaNome;
  dmCadastro.tbCadastroEmpresabdCnpj.AsString := wEmpresa.wEmpresaCnpj;
  dmCadastro.tbCadastroEmpresa.Post;
  
end;

procedure TfrCadastroEmpresa.btConsultarClick(Sender: TObject);
var
  wMostrarTela2 :  TGrEmpresa;
begin
  inherited;
  wMostrarTela2 := TGrEmpresa.Create(Self);
  wMostrarTela2.Show;
end;

end.
