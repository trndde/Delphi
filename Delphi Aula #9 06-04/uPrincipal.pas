unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, uDataModule, uConsulta;

type
  TfrPrincipal = class(TForm)
    edCodigo: TLabeledEdit;
    edRazao: TLabeledEdit;
    edNomeFantasia: TLabeledEdit;
    edInscricao: TLabeledEdit;
    edCNPJ: TMaskEdit;
    Label1: TLabel;
    edCNAE: TLabeledEdit;
    edEmail: TLabeledEdit;
    edLogradouro: TLabeledEdit;
    edNumero: TLabeledEdit;
    edCEP: TMaskEdit;
    Label2: TLabel;
    edBairro: TLabeledEdit;
    edCidade: TLabeledEdit;
    cbEstado: TComboBox;
    Label3: TLabel;
    edTelefone: TMaskEdit;
    edCelular: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    btSalvar: TButton;
    btConsultar: TButton;
    btExcluir: TButton;
    edInicioAtividade: TMaskEdit;
    Label6: TLabel;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure edCNPJExit(Sender: TObject);
  private
    { Private declarations }
    procedure pMensagemLimpaCampos(prFoco, prApresentar: Boolean; prMensagem: String = ''); 
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.btSalvarClick(Sender: TObject);  //Na rotina do bot?o Salvar,
begin
 frDataModule.tbCadastro.IndexFieldNames:= 'BDCODIGO';         //puxei da tabela que est? no frDataModule e indexei pelo campo BDCODIGO

 if frDataModule.tbCadastro.FindKey([edCodigo.Text]) then       //Caso exista o c?digo na tabela, edita os campos na tabela com as novas informa??es
    frDataModule.tbCadastro.Edit
 else
    frDataModule.tbCadastro.Insert;                             //caso n?o exista, insere na tabela as informa??es preenchidas nos campos correspondentes

    frDataModule.tbCadastroBDCODIGO.AsInteger:= frDataModule.tbCadastro.RecordCount +1;
    frDataModule.tbCadastroBDRAZAO.AsString:= edRazao.Text;
    frDataModule.tbCadastroBDNOMEFANTASIA.AsString:= edNomeFantasia.Text;
    frDataModule.tbCadastroBDCNPJ.AsString:= edCNPJ.Text;
    frDataModule.tbCadastroBDINSCRICAO.AsString:= edInscricao.Text;
    frDataModule.tbCadastroBDCNAE.AsString:= edCNAE.Text;
    frDataModule.tbCadastroBDEMAIL.AsString:= edEmail.Text;
    frDataModule.tbCadastroBDLOGRADOURO.AsString:= edLogradouro.Text;
    frDataModule.tbCadastroBDNUMERO.AsString:= edNumero.Text;
    frDataModule.tbCadastroBDCEP.AsString:= edCEP.Text;
    frDataModule.tbCadastroBDBAIRRO.AsString:= edBairro.Text;
    frDataModule.tbCadastroBDCIDADE.AsString:= edCidade.Text;
    frDataModule.tbCadastroBDESTADO.AsInteger:= cbEstado.ItemIndex;
    frDataModule.tbCadastroBDTELEFONE.AsString:= edTelefone.Text;
    frDataModule.tbCadastroBDCELULAR.AsString:= edCelular.Text;
    frDataModule.tbCadastroBDINICIOATIVIDADE.AsString:= edInicioAtividade.Text;

    frDataModule.tbCadastro.Post;

    pMensagemLimpaCampos(True, True, 'Cadastro salvo'); //Chamando procedure de Limpar campos e mensagem de salvo



end;

procedure TfrPrincipal.btConsultarClick(Sender: TObject);   //Abre Tela de consulta
var
  wTelaConsulta: TfrConsulta;
begin
  wTelaConsulta:= TfrConsulta.Create(Self);
  wTelaConsulta.Show;
end;

procedure TfrPrincipal.btExcluirClick(Sender: TObject);    //Na rotina do bot?o excluir,
begin
  frDataModule.tbCadastro.IndexFieldNames := 'BDCODIGO';    //Indexa na tabela a partir do campos BDCODIGO
  if frDataModule.tbCadastro.FindKey([edCodigo.Text]) then   //Caso exista o c?digo,
    begin
     frDataModule.tbCadastro.Delete;                         //Deleta as informa??es desse cadastro na tabela
     pMensagemLimpaCampos(True, True, 'Cadastro exclu?do');  //Procedure pra limpar campos e exibir mensagem de exclus?o com sucesso
    end;
end;

procedure TfrPrincipal.edCodigoEnter(Sender: TObject);    //Ao entrar no campo C?DIGO, desabilita os bot?es Excluir e Salvar, pode ser colocado no OnCreate do Form tamb?m.
begin
  btExcluir.Enabled := False;
  btSalvar.Enabled:= False;
end;

procedure TfrPrincipal.edCodigoExit(Sender: TObject);         //Ao sair do campo C?DIGO,
begin
frDataModule.tbCadastro.IndexFieldNames:= 'BDCODIGO';         //Indexa no campo BDCODIGO e
  if frDataModule.tbCadastro.FindKey([edCodigo.Text]) then    //verifica se ja existe o cadastro referente a esse c?digo e
     begin                                                    //preenche os campos da tela com as informa??es j? existentes na tabela
        edRazao.Text:= frDataModule.tbCadastroBDRAZAO.AsString;
        edNomeFantasia.Text:= frDataModule.tbCadastroBDNOMEFANTASIA.AsString;
        edCNPJ.Text:= frDataModule.tbCadastroBDCNPJ.AsString;
        edInscricao.Text:= frDataModule.tbCadastroBDINSCRICAO.AsString;
        edCNAE.Text:= frDataModule.tbCadastroBDCNAE.AsString;
        edEmail.Text:= frDataModule.tbCadastroBDEMAIL.AsString;
        edLogradouro.Text:= frDataModule.tbCadastroBDLOGRADOURO.AsString;
        edNumero.Text:= frDataModule.tbCadastroBDNUMERO.AsString;
        edCEP.Text:= frDataModule.tbCadastroBDCEP.AsString;
        edBairro.Text:= frDataModule.tbCadastroBDBAIRRO.AsString;
        edCidade.Text:= frDataModule.tbCadastroBDCIDADE.AsString;
        cbEstado.ItemIndex:= frDataModule.tbCadastroBDESTADO.AsInteger;
        edTelefone.Text:= frDataModule.tbCadastroBDTELEFONE.AsString;
        edCelular.Text:= frDataModule.tbCadastroBDCELULAR.AsString;
        edInicioAtividade.Text:= frDataModule.tbCadastroBDINICIOATIVIDADE.AsString;
     end
  else                                                        //Caso n?o exista cadastro referente ao c?digo,
     begin                                                    //Limpa os campos da tela 
        edRazao.Text:= '';
        edNomeFantasia.Text:= '';
        edCNPJ.Text:= '';
        edInscricao.Text:= '';
        edCNAE.Text:= '';
        edEmail.Text:= '';
        edLogradouro.Text:= '';
        edNumero.Text:= '';
        edCEP.Text:= '';
        edBairro.Text:= '';
        edCidade.Text:= '';
        cbEstado.ItemIndex:= -1;
        edTelefone.Text:= '';
        edCelular.Text:= '';
        edInicioAtividade.Text:= '';
     end;
     
  frDataModule.tbCadastro.IndexFieldNames:= 'BDCODIGO';
  btExcluir.Enabled := frDataModule.tbCadastro.FindKey([edCodigo.Text]); //HABILITA O BOTAO EXCLUIR SE FOR ACHADO O CADASTRO A PARTIR DO CODIGO INFORMADO

end;

procedure TfrPrincipal.edCNPJExit(Sender: TObject);
begin
  if edCNPJ.Text = '  .   .   /    -  ' then
     ShowMessage('O campo n?o pode ficar vazio');


  if edCNPJ.Text = '  .   .   /    -  ' then
     btSalvar.Enabled:= False
  else
     btSalvar.Enabled:= True;
end;

procedure TfrPrincipal.pMensagemLimpaCampos(prFoco, prApresentar: Boolean;
  prMensagem: String);
begin
  if prApresentar then
     ShowMessage(prMensagem + ' com sucesso!');

        edRazao.Text:= '';
        edNomeFantasia.Text:= '';
        edCNPJ.Text:= '';
        edInscricao.Text:= '';
        edCNAE.Text:= '';
        edEmail.Text:= '';
        edLogradouro.Text:= '';
        edNumero.Text:= '';
        edCEP.Text:= '';
        edBairro.Text:= '';
        edCidade.Text:= '';
        cbEstado.ItemIndex:= -1;
        edTelefone.Text:= '';
        edCelular.Text:= '';
        edInicioAtividade.Text:= '';

     if prFoco then
        edCodigo.SetFocus;
end;

end.
