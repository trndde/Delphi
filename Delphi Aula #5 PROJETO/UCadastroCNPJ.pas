unit UCadastroCNPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoCadastro, StdCtrls, ExtCtrls, UClasses, UDataModule, UConsultaCNPJ;

type
  TfrCadastroPessoaJuridica = class(TfrPadraoCadastro)
    edRazaoSocial: TLabeledEdit;
    edCNPJ: TLabeledEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroPessoaJuridica: TfrCadastroPessoaJuridica;

implementation

{$R *.dfm}

procedure TfrCadastroPessoaJuridica.btSalvarClick(Sender: TObject);
var
  wCadastro: TCadastroCNPJ;
begin
  inherited;
  wCadastro := TCadastroCNPJ.Create;
  wCadastro.wCodigoCliente := edCodigoCliente.Text;
  wCadastro.wNomeCliente := edNomeCliente.Text;
  wCadastro.wTelefone :=  edTelefone.Text;
  wCadastro.wEndereco := edEndereco.Text;
  wCadastro.wCEP := edCEP.Text;
  wCadastro.wRazaoSocial := edRazaoSocial.Text;
  wCadastro.wCNPJ := edCNPJ.Text;

  frDataModule.pCriarTabelaCadastroCNPJ;

  frDataModule.tbCadastroCNPJ.Insert;
  frDataModule.tbCadastroCNPJ.FieldByName('bdCodigo').AsString := wCadastro.wCodigoCliente;
  frDataModule.tbCadastroCNPJ.FieldByName('bdNome').AsString := wCadastro.wNomeCliente;
  frDataModule.tbCadastroCNPJ.FieldByName('bdTelefone').AsString := wCadastro.wTelefone;
  frDataModule.tbCadastroCNPJ.FieldByName('bdEndereco').AsString := wCadastro.wEndereco;
  frDataModule.tbCadastroCNPJ.FieldByName('bdCEP').AsString := wCadastro.wCEP;
  frDataModule.tbCadastroCNPJ.FieldByName('bdRazaoSocial').AsString := wCadastro.wRazaoSocial;
  frDataModule.tbCadastroCNPJ.FieldByName('bdCNPJ').AsString := wCadastro.wCNPJ;
  frDataModule.tbCadastroCNPJ.Post;


end;

procedure TfrCadastroPessoaJuridica.btConsultaClick(Sender: TObject);
var
 wConsultaCNPJ: TfrConsultaPessoaJuridica;
begin
  inherited;
  wConsultaCNPJ := TfrConsultaPessoaJuridica.Create(Self);
  wConsultaCNPJ.Show;

end;

end.
