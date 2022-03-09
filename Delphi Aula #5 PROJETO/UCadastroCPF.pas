unit UCadastroCPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoCadastro, StdCtrls, ExtCtrls, UClasses, UDataModule, UConsultaCPF;

type
  TfrCadastroPessoaFisica = class(TfrPadraoCadastro)
    edCPF: TLabeledEdit;
    edData: TLabeledEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroPessoaFisica: TfrCadastroPessoaFisica;

implementation

{$R *.dfm}

procedure TfrCadastroPessoaFisica.btSalvarClick(Sender: TObject);
var
 wCadastro: TCadastroCPF;
begin
  inherited;
  wCadastro := TCadastroCPF.Create;
  wCadastro.wCodigoCliente := edCodigoCliente.Text;
  wCadastro.wNomeCliente := edNomeCliente.Text;
  wCadastro.wTelefone := edTelefone.Text;
  wCadastro.wEndereco := edEndereco.Text;
  wCadastro.wCEP := edCEP.Text;
  wCadastro.wCPF := edCPF.Text;
  wCadastro.wData := edData.Text;

  frDataModule.pCriarTabelaCadastroCPF;

  frDataModule.tbCadastroCPF.Insert;
  frDataModule.tbCadastroCPF.FieldByName('bdCodigo').AsString := wCadastro.wCodigoCliente;
  frDataModule.tbCadastroCPF.FieldByName('bdNome').AsString :=  wCadastro.wNomeCliente;
  frDataModule.tbCadastroCPF.FieldByName('bdTelefone').AsString := wCadastro.wTelefone;
  frDataModule.tbCadastroCPF.FieldByName('bdEndereco').AsString := wCadastro.wEndereco;
  frDataModule.tbCadastroCPF.FieldByName('bdCEP').AsString := wCadastro.wCEP;
  frDataModule.tbCadastroCPF.FieldByName('bdCPF').AsString := wCadastro.wCPF;
  frDataModule.tbCadastroCPF.FieldByName('bdData').AsString := wCadastro.wData;
  frDataModule.tbCadastroCPF.Post;

end;

procedure TfrCadastroPessoaFisica.btConsultaClick(Sender: TObject);
var
  wConsultaCPF: TfrConsultaPessoaFisica;
begin
  inherited;
  wConsultaCPF := TfrConsultaPessoaFisica.Create(Self);
  wConsultaCPF.Show;

end;

end.
