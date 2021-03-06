unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids, DBTables;

type
  TForm1 = class(TForm)
    lblNome: TLabel;
    edNome: TEdit;
    lblSexo: TLabel;
    cbSexo: TComboBox;
    ckEstrangeiro: TCheckBox;
    btAdicionar: TButton;
    btMostrar: TButton;
    btSalvar: TButton;
    cdsCadastro: TClientDataSet;
    cdsCadastrobdNome: TStringField;
    cdsCadastrobdEstrangeiro: TBooleanField;
    cdsCadastrobdSexo: TIntegerField;
    cdsCadastrobdCodigo: TIntegerField;
    edCodigo: TEdit;
    lblCodigo: TLabel;
    dsCadastro: TDataSource;
    grCadastro: TDBGrid;
    tbCadastro: TTable;
    tbCadastrobdCodigo: TStringField;
    tbCadastrobdNome: TStringField;
    tbCadastrobdSexo: TIntegerField;
    tbCadastrobdEstrangeiro: TBooleanField;
    btExcluir: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btMostrarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
  private
    { Private declarations }
    wCdsDiferente: TClientDataSet;


    function fDiretorio: String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  cdsCadastro.CreateDataSet;
  cdsCadastro.Open;

  if not DirectoryExists(fDiretorio) then
         ForceDirectories(fDiretorio);

  tbCadastro.Active := False;
  tbCadastro.DatabaseName := fDiretorio;
  tbCadastro.TableName := 'tCadastro.db';
  tbCadastro.TableType := ttParadox;

  tbCadastro.IndexDefs.Add('iCODIGO', 'bdCodigo', [ixPrimary, ixUnique]); //Precisa criar o IndexDefs (indice) pra poder usar o IndexFieldsName 

  if not  FileExists(tbCadastro.DatabaseName + '\' + tbCadastro.TableName) then
          tbCadastro.CreateTable;

  tbCadastro.Open;
  tbCadastro.Active := True;
end;

procedure TForm1.btAdicionarClick(Sender: TObject);

begin
  cdsCadastro.IndexFieldNames:= 'bdCodigo';         // Rotina utilizada pra verificar se o c?digo JA EXISTE e est? em uso, caso n?o esteja, da a op??o de inserir novo c?digo.
  if cdsCadastro.FindKey([edCodigo.Text]) then     // FindKey: Procura informa??o dentro da tabela
     cdsCadastro.Edit
  else
     cdsCadastro.Insert;

  cdsCadastrobdCodigo.AsString:= edCodigo.Text;
  cdsCadastrobdNome.AsString:= edNome.Text;
  cdsCadastrobdSexo.AsInteger:= cbSexo.ItemIndex;
  cdsCadastrobdEstrangeiro.AsBoolean:= ckEstrangeiro.Checked;

     cdsCadastro.Post;


  tbCadastro.IndexFieldNames:= 'bdCodigo';        // Mesma rotina utilizada anteriormente, por?m pra tabela (tb) ao inv?s de ClientDataSet (cds)
  if tbCadastro.FindKey([edCodigo.Text]) then
     tbCadastro.Edit
  else
     tbCadastro.Insert;

  tbCadastrobdCodigo.AsString:= edCodigo.Text;
  tbCadastrobdNome.AsString:= edNome.Text;
  tbCadastrobdSexo.AsInteger:= cbSexo.ItemIndex;
  tbCadastrobdEstrangeiro.AsBoolean:= ckEstrangeiro.Checked;

     tbCadastro.Post;

end;

procedure TForm1.btMostrarClick(Sender: TObject);  // Rotina do bot?o Mostrar
var
  wSexo: String;
  wTexto: String;
  wEstrangeiro: String;
begin

  wTexto:='';

  cdsCadastro.IndexFieldNames:= 'bdCodigo';   //Ordenar os campos a partir do c?digo

  cdsCadastro.First;

  while not cdsCadastro.Eof do
    begin

      if cdsCadastrobdSexo.AsInteger = 0 then     //Usar 'cdsCadastrobdSexo' ao inv?s de 'cbSexo.ItemIndex' pra buscar a informa??o no Client Data Set (Tabela).
        wSexo:= 'Masculino'
      else
        wSexo:= 'Feminino';

      if cdsCadastrobdEstrangeiro.AsBoolean then
        wEstrangeiro:= 'Sim'
      else
        wEstrangeiro:= 'N?o';

  wTexto := wTexto + #13 + 'C?digo: ' + cdsCadastrobdCodigo.AsString + ' Nome: ' + cdsCadastrobdNome.AsString +
            ' Sexo: ' + wSexo + ' Estrangeiro: ' + wEstrangeiro;

  cdsCadastro.Next;
      end;
  showMessage (wTexto)

end;

procedure TForm1.edCodigoExit(Sender: TObject); //M?todo pra verificar existencia de cadastro a partir do C?DIGO informado, pra preencher automaticamente caso exista
begin
tbCadastro.IndexFieldNames := 'bdCodigo'; //Procura na coluna 'bdCodigo'
  if tbCadastro.FindKey([edCodigo.Text]) then //(FindKey) Met?do usado pra achar a informa??o digitada pelo usu?rio (edCodigo.Text) dentro da coluna 'bdCodigo'
     begin
       edNome.Text := tbCadastrobdNome.AsString;
       cbSexo.ItemIndex := tbCadastrobdSexo.AsInteger;
       ckEstrangeiro.Checked := tbCadastrobdEstrangeiro.AsBoolean;
     end
  else
     begin
       edNome.Text := '';        //Limpa campos caso o C?digo informado n?o exista.
       cbSexo.ItemIndex := -1;
       ckEstrangeiro.Checked := False;
     end;

  tbCadastro.IndexFieldNames := 'bdCodigo';
  btExcluir.Enabled := tbCadastro.FindKey([edCodigo.Text]);   //Verifica se o c?digo existe, e caso exista, habilita o bot?o Excluir 
end;

procedure TForm1.btSalvarClick(Sender: TObject);
var
  wCdsDiferente: TClientDataSet;       //Criando Client Data Set MANUALMENTE caso o Font n?o tenha tela 
begin
  wCdsDiferente:= TClientDataSet.Create(Self);

  wCdsDiferente.FieldDefs.Add('bdCodigo', ftInteger);
  wCdsDiferente.FieldDefs.Add('bdNome', ftString, 100);
  wCdsDiferente.FieldDefs.Add('bdSexo', ftInteger);
  wCdsDiferente.FieldDefs.Add('bdEstrangeiro', ftBoolean);

  wCdsDiferente.CreateDataSet;
  wCdsDiferente.Open;

  wCdsDiferente.Insert;
  wCdsDiferente.FieldByName('bdCodigo').AsString := edCodigo.Text;
  wCdsDiferente.FieldByName('bdNome').AsString := edNome.Text;
  wCdsDiferente.FieldByName('bdSexo').AsInteger := cbSexo.ItemIndex;
  wCdsDiferente.FieldByName('bdEstrangeiro').AsBoolean := ckEstrangeiro.Checked;
  wCdsDiferente.Post;
end;

function TForm1.fDiretorio:String;
begin
  Result:= ('C:\Users\prog11\Desktop\Delphi Aulas\Delphi Aula #3 07-03\Tabela')
end;


procedure TForm1.btExcluirClick(Sender: TObject);   //Rotina do bot?o Excluir
begin
  tbCadastro.IndexFieldNames := 'bdCodigo';
  if tbCadastro.FindKey([edCodigo.Text]) then
     tbCadastro.Delete;
end;

procedure TForm1.edCodigoEnter(Sender: TObject); //Ao entrar no campo, desabilita o bot?o Excluir
begin
btExcluir.Enabled := False;
end;

end.
