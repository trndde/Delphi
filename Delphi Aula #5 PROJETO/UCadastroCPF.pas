unit UCadastroCPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoCadastro, StdCtrls, ExtCtrls, UClasses, UDataModule, UConsultaCPF; //Inserir Units das classes, do DataModule e da consulta

type
  TfrCadastroPessoaFisica = class(TfrPadraoCadastro)
    edCPF: TLabeledEdit;
    edData: TLabeledEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure edCPFKeyPress(Sender: TObject; var Key: Char);
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
  inherited;                                                      //Atribui valores aos campos a partir do texto digitado pelo usuario
  wCadastro := TCadastroCPF.Create;
  wCadastro.wCodigoCliente := edCodigoCliente.Text;
  wCadastro.wNomeCliente := edNomeCliente.Text;
  wCadastro.wTelefone := edTelefone.Text;
  wCadastro.wEndereco := edEndereco.Text;
  wCadastro.wCEP := edCEP.Text;
  wCadastro.wCPF := edCPF.Text;
  wCadastro.wData := edData.Text;

  frDataModule.pCriarTabelaCadastroCPF;

  frDataModule.tbCadastroCPF.Insert;                                                         //Insere os valores na tabela
  frDataModule.tbCadastroCPF.FieldByName('bdCodigo').AsString := wCadastro.wCodigoCliente;
  frDataModule.tbCadastroCPF.FieldByName('bdNome').AsString :=  wCadastro.wNomeCliente;
  frDataModule.tbCadastroCPF.FieldByName('bdTelefone').AsString := wCadastro.wTelefone;
  frDataModule.tbCadastroCPF.FieldByName('bdEndereco').AsString := wCadastro.wEndereco;
  frDataModule.tbCadastroCPF.FieldByName('bdCEP').AsString := wCadastro.wCEP;
  frDataModule.tbCadastroCPF.FieldByName('bdCPF').AsString := wCadastro.wCPF;
  frDataModule.tbCadastroCPF.FieldByName('bdData').AsString := wCadastro.wData;
  frDataModule.tbCadastroCPF.Post;

end;

procedure TfrCadastroPessoaFisica.btConsultaClick(Sender: TObject);  //Botão consulta, pra abrir tela de consulta
var
  wConsultaCPF: TfrConsultaPessoaFisica;
begin
  inherited;
  wConsultaCPF := TfrConsultaPessoaFisica.Create(Self);
  wConsultaCPF.Show;

end;

procedure TfrCadastroPessoaFisica.edCPFKeyPress(Sender: TObject; //Mascara CPF
  var Key: Char);
begin
  inherited;
   if Key = #8 then
      exit;

   if Length(EdCPF.Text) = 3 then
      begin
         edCPF.Text := edCPF.Text + '.';
         edCPF.Selstart := Length(edCPF.text);
      end;

   if Length(edCPF.Text) = 7 then
      begin
         edCPF.Text := edCPF.Text + '.';
         edCPF.Selstart := Length(edCPF.text);
      end;

   if Length(edCPF.Text) = 11 then
      begin
         edCPF.Text := edCPF.Text + '-';
         edCPF.Selstart := Length(edCPF.text);
      end;
end;

end.
