unit UCadastroPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastroPadrao, StdCtrls, Mask, ExtCtrls, UClasses, UConsultaPaciente, UDataModule;

type
  TfrCadastroPaciente = class(TfrCadastroPadrao)
    edContatoAcompanhante: TLabeledEdit;
    cbPrioridade: TComboBox;
    procedure btSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btSalvarTxtClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
  private
    { Private declarations }
    wSexo: String;
    wPrioridade: String;
    wStringList: TStringList;


  public
    { Public declarations }
  end;

var
  frCadastroPaciente: TfrCadastroPaciente;

implementation

uses DB;


{$R *.dfm}

procedure TfrCadastroPaciente.btSalvarClick(Sender: TObject);
var
  wCadastro: TCadastroPaciente;
begin
  inherited;
  wCadastro:= TCadastroPaciente.Create;

  wCadastro.wCodigo:= StrToInt(edCodigo.Text);
  wCadastro.wNome:= edNome.Text;
  wCadastro.wData:= edDataNascimento.Text;
  wCadastro.wCPF:= edCPF.Text;
  wCadastro.wRG:= edRG.Text;
  wCadastro.wSexo:= cbSexo.ItemIndex;
  wCadastro.wTelefone:= edTelefone.Text;
  wCadastro.wEmail:= edEmail.Text;
  wCadastro.wEndereco:= edEndereco.Text;
  wCadastro.wCEP:= edCEP.Text;
  wCadastro.wCidade:= edCidade.Text;
  wCadastro.wEstado:= edEstado.Text;
  wCadastro.wPais:= edPais.Text;
  wCadastro.wContatoAcompanhante:= edContatoAcompanhante.Text;
  wCadastro.wPrioridade:= cbPrioridade.ItemIndex;

  frDataModule.tbCadastroPaciente.IndexFieldNames:= 'bdCodigo';

  if frDataModule.tbCadastroPaciente.FindKey([edCodigo.Text]) then
     frDataModule.tbCadastroPaciente.Edit
  else
     frDataModule.tbCadastroPaciente.Insert;

  frDataModule.tbCadastroPaciente.FieldByName('bdCodigo').AsInteger:= wCadastro.wCodigo;
  frDataModule.tbCadastroPaciente.FieldByName('bdNome').AsString:= wCadastro.wNome;
  frDataModule.tbCadastroPaciente.FieldByName('bdData').AsString:= wCadastro.wData;
  frDataModule.tbCadastroPaciente.FieldByName('bdCPF').AsString:= wCadastro.wCPF;
  frDataModule.tbCadastroPaciente.FieldByName('bdRG').AsString:= wCadastro.wRG;
  frDataModule.tbCadastroPaciente.FieldByName('bdSexo').AsInteger:= wCadastro.wSexo;
  frDataModule.tbCadastroPaciente.FieldByName('bdTelefone').AsString:= wCadastro.wTelefone;
  frDataModule.tbCadastroPaciente.FieldByName('bdEmail').AsString:= wCadastro.wEmail;
  frDataModule.tbCadastroPaciente.FieldByName('bdEndereco').AsString:= wCadastro.wEndereco;
  frDataModule.tbCadastroPaciente.FieldByName('bdCEP').AsString:= wCadastro.wCEP;
  frDataModule.tbCadastroPaciente.FieldByName('bdCidade').AsString:= wCadastro.wCidade;
  frDataModule.tbCadastroPaciente.FieldByName('bdEstado').AsString:= wCadastro.wEstado;
  frDataModule.tbCadastroPaciente.FieldByName('bdPais').AsString:= wCadastro.wPais;
  frDataModule.tbCadastroPaciente.FieldByName('bdContatoAcompanhante').AsString:= wCadastro.wContatoAcompanhante;
  frDataModule.tbCadastroPaciente.FieldByName('bdPrioridade').AsInteger:= wCadastro.wPrioridade;

  frDataModule.tbCadastroPaciente.Post;

end;


procedure TfrCadastroPaciente.FormCreate(Sender: TObject);
begin
  inherited;
  frDataModule.pCriarTabelaCadastroPaciente;

  wStringList := TstringList.Create;
end;

procedure TfrCadastroPaciente.btSalvarTxtClick(Sender: TObject);
var
  wTexto: String;
  wStringList: TStringList;
begin
  inherited;
  wStringList := TStringList.Create;

  if cbSexo.ItemIndex = 0 then
     wSexo:= 'Feminino'
  else if cbSexo.ItemIndex = 1 then
     wSexo:= 'Masculino'
  else if cbSexo.ItemIndex = 2 then
     wSexo:= 'N?o-Bin?rio';

  if cbPrioridade.ItemIndex = 0 then
     wPrioridade:= 'N?o Urgente'
  else if cbPrioridade.ItemIndex = 1 then
     wPrioridade:= 'Pouco Urgente'
  else if cbPrioridade.ItemIndex = 2 then
     wPrioridade:= 'Urgente'
  else if cbPrioridade.ItemIndex = 3 then
     wPrioridade:= 'Emerg?ncia';

  wTexto:= ('Nome: ' + edNome.Text + ' C?digo: ' + edCodigo.Text + ' Sexo: ' + wSexo + ' Prioridade: ' + wPrioridade);
  wStringList.Add('Nome: ' + edNome.Text + ' C?digo: ' + edCodigo.Text + ' Sexo: ' + wSexo + ' Prioridade: ' + wPrioridade);

    wStringList.Add(wTexto);
    wStringList.SaveToFile('C:\StringList.txt');
    wStringList.Free;



end;

procedure TfrCadastroPaciente.btConsultarClick(Sender: TObject);
var
  wTelaConsultaPaciente: TfrConsultaPaciente;
begin
  inherited;
  wTelaConsultaPaciente:= TfrConsultaPaciente.Create(Self);
  wTelaConsultaPaciente.Show;

end;

procedure TfrCadastroPaciente.edCodigoExit(Sender: TObject);
begin
  inherited;
  frDataModule.tbCadastroPaciente.IndexFieldNames:= 'bdCodigo';

  if frDataModule.tbCadastroPaciente.FindKey([edCodigo.Text]) then
     begin
       edNome.Text:= frDataModule.tbCadastroPacientebdNome.AsString;
       edDataNascimento.Text:= frDataModule.tbCadastroPacientebdData.AsString;
       edCPF.Text:= frDataModule.tbCadastroPacientebdCPF.AsString;
       edRG.Text:= frDataModule.tbCadastroPacientebdRG.AsString;
       cbSexo.ItemIndex:= frDataModule.tbCadastroPacientebdSexo.AsInteger;
       edTelefone.Text:= frDataModule.tbCadastroPacientebdTelefone.AsString;
       edEmail.Text:= frDataModule.tbCadastroPacientebdEmail.AsString;
       edEndereco.Text:= frDataModule.tbCadastroPacientebdEndereco.AsString;
       edCEP.Text:= frDataModule.tbCadastroPacientebdCEP.AsString;
       edCidade.Text:= frDataModule.tbCadastroPacientebdCidade.AsString;
       edEstado.Text:= frDataModule.tbCadastroPacientebdEstado.AsString;
       edPais.Text:= frDataModule.tbCadastroPacientebdPais.AsString;
       edContatoAcompanhante.Text:= frDataModule.tbCadastroPacientebdContatoAcompanhante.AsString;
       cbPrioridade.ItemIndex:= frDataModule.tbCadastroPacientebdPrioridade.AsInteger;
     end

  else
     begin
       edNome.Text:= '';
       edDataNascimento.Text:='';
       edCPF.Text:='';
       edRG.Text:= '';
       cbSexo.ItemIndex:= -1;
       edTelefone.Text:= '';
       edEmail.Text:= '';
       edEndereco.Text:= '';
       edCEP.Text:= '';
       edCidade.Text:= '';
       edEstado.Text:= '';
       edPais.Text:='';
       edContatoAcompanhante.Text:='';
       cbPrioridade.ItemIndex:= -1;
     end;
end;

end.
