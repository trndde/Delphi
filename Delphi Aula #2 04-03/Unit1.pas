unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids;

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
    procedure FormCreate(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btMostrarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
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

end;

procedure TForm1.btAdicionarClick(Sender: TObject);

begin
  cdsCadastro.IndexFieldNames:= 'bdCodigo';         // Rotina utilizada pra verificar se o código JA EXISTE e está em uso, caso não esteja, da a opção de inserir novo código.
  if cdsCadastro.FindKey([edCodigo.Text]) then     // FindKey: Procura informação dentro da tabela 
     cdsCadastro.Edit
  else
     cdsCadastro.Insert;


  cdsCadastro.Insert;
  cdsCadastrobdCodigo.AsString:= edCodigo.Text;
  cdsCadastrobdNome.AsString:= edNome.Text;
  cdsCadastrobdSexo.AsInteger:= cbSexo.ItemIndex;
  cdsCadastrobdEstrangeiro.AsBoolean:= ckEstrangeiro.Checked;
  cdsCadastro.Post;

end;

procedure TForm1.btMostrarClick(Sender: TObject);  // Rotina do botão Mostrar
var
  wSexo: String;
  wTexto: String;
  wEstrangeiro: String;
begin

  wTexto:='';

  cdsCadastro.IndexFieldNames:= 'bdCodigo';   //Ordenar os campos a partir do código

  cdsCadastro.First;

  while not cdsCadastro.Eof do
    begin

      if cdsCadastrobdSexo.AsInteger = 0 then     //Usar 'cdsCadastrobdSexo' ao invés de 'cbSexo.ItemIndex' pra buscar a informação no Client Data Set (Tabela).
        wSexo:= 'Masculino'
      else
        wSexo:= 'Feminino';

      if cdsCadastrobdEstrangeiro.AsBoolean then
        wEstrangeiro:= 'Sim'
      else
        wEstrangeiro:= 'Não';

  wTexto := wTexto + #13 + 'Código: ' + cdsCadastrobdCodigo.AsString + ' Nome: ' + cdsCadastrobdNome.AsString +
            ' Sexo: ' + wSexo + ' Estrangeiro: ' + wEstrangeiro;

  cdsCadastro.Next;
      end;
  showMessage (wTexto)

end;

procedure TForm1.edCodigoExit(Sender: TObject); //Rotina pra quando sair do campo 'Código' Preencher automaticamente com o cadastro correspondente
begin
cdsCadastro.IndexFieldNames := 'bdCodigo';
  if cdsCadastro.FindKey([edCodigo.Text]) then
     begin
       edNome.Text := cdsCadastrobdNome.AsString;
       cbSexo.ItemIndex := cdsCadastrobdSexo.AsInteger;
       ckEstrangeiro.Checked := cdsCadastrobdEstrangeiro.AsBoolean;
     end
  else
     begin
       edNome.Text := '';        //Limpa campos caso o Código informado não exista, possibilitando criar um novo cadastro.
       cbSexo.ItemIndex := -1;
       ckEstrangeiro.Checked := False;
     end;
end;

procedure TForm1.btSalvarClick(Sender: TObject);
var
  cdsDiferente: TClientDataSet;       //Criando Client Data Set MANUALMENTE
begin
  cdsDiferente:= TClientDataSet.Create(Self);

  cdsDiferente.FieldDefs.Add('bdCodigo', ftInteger);
  cdsDiferente.FieldDefs.Add('bdNome', ftString, 100);
  cdsDiferente.FieldDefs.Add('bdSexo', ftInteger);
  cdsDiferente.FieldDefs.Add('bdEstrangeiro', ftBoolean);

  cdsDiferente.CreateDataSet;
  cdsDiferente.Open;

  cdsDiferente.Insert;
  cdsDiferente.FieldByName('bdCodigo').AsString := edCodigo.Text;
  cdsDiferente.FieldByName('bdNome').AsString := edNome.Text;
  cdsDiferente.FieldByName('bdSexo').AsInteger := cbSexo.ItemIndex;
  cdsDiferente.FieldByName('bdEstrangeiro').AsBoolean := ckEstrangeiro.Checked;
  cdsDiferente.Post;
end;

end.
