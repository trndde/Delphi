unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, uConsulta;

type
  TfrPrincipal = class(TForm)
    edCodigo: TLabeledEdit;
    edNome: TLabeledEdit;
    btAdicionar: TButton;
    btConsultar: TButton;
    btSalvar: TButton;
    ckEstrangeiro: TCheckBox;
    cbSexo: TComboBox;
    btMensagem: TButton;
    dsCadastro: TDataSource;
    tbCadastro: TTable;
    tbCadastroBDCODIGO: TIntegerField;
    tbCadastroBDNOME: TStringField;
    tbCadastroBDSEXO: TStringField;
    tbCadastroBDESTRANGEIRO: TStringField;
    Label1: TLabel;
    btSair: TButton;
    procedure btMensagemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
    wSexo: String;
    wEstrangeiro: String;
    wStringList: TStringList;
    wTexto: String;

    function fDiretorio: String;

  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

function TfrPrincipal.fDiretorio: String;
begin
  result:= ('C:\Users\prog11\Desktop\Delphi Aulas\Delphi Aula #8 05-04')
end;

procedure TfrPrincipal.FormCreate(Sender: TObject);
begin
  if not DirectoryExists (fDiretorio) then
         ForceDirectories (fDiretorio);


  wStringList:= TStringList.Create;
end;


procedure TfrPrincipal.FormShow(Sender: TObject);
begin
  tbCadastro.Active:= False;
  tbCadastro.DatabaseName:= 'C:\Tabelas';
  tbCadastro.TableName:= 'tCadastro.db';
  tbCadastro.TableType:= ttParadox;

  if not FileExists(tbCadastro.DatabaseName + '\' + tbCadastro.TableName) then
    begin
       tbCadastro.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]);
       tbCadastro.CreateTable;
    end;

  tbCadastro.Active:= True;
  tbCadastro.Open;
end;

procedure TfrPrincipal.btAdicionarClick(Sender: TObject);
begin

  tbCadastro.IndexFieldNames:= 'BDCODIGO';

  if tbCadastro.FindKey([edCodigo.Text]) then
     tbCadastro.Edit
  else
     tbCadastro.Insert;

     tbCadastroBDCODIGO.AsInteger:= tbCadastro.RecordCount + 1;
     tbCadastroBDNOME.AsString:= edNome.Text;
     tbCadastroBDSEXO.AsInteger:= cbSexo.ItemIndex;
     tbCadastroBDESTRANGEIRO.AsBoolean:= ckEstrangeiro.Checked;

     tbCadastro.Post
end;

procedure TfrPrincipal.btConsultarClick(Sender: TObject);
var
  wTelaConsulta: TfrConsulta;
begin
  wTelaConsulta:= TfrConsulta.Create(Self);
  wTelaConsulta.Show;
end;


procedure TfrPrincipal.btSalvarClick(Sender: TObject);
begin
  wStringList:= TStringList.Create;

  if cbSexo.ItemIndex = 0 then
     wSexo:= 'Feminino'
  else
     wSexo:= 'Masculino';


  if ckEstrangeiro.Checked then
     wEstrangeiro:= 'Sim'
  else
     wEstrangeiro:= 'N?o';

  wTexto:= (wTexto + #13 + 'C?digo: ' + edcodigo.Text + ' Nome: ' + edNome.Text + ' Sexo: ' + wSexo + ' Estrangeiro? ' + wEstrangeiro);
  wStringList.Add(wTexto);
  wStringList.SaveToFile('C:\StringList.txt');
  wStringList.Free;


  
  tbCadastro.IndexFieldNames:= 'BDCODIGO';

  if tbCadastro.FindKey([edCodigo.Text]) then
     tbCadastro.Edit
  else
     tbCadastro.Insert;

     tbCadastroBDCODIGO.AsInteger:= tbCadastro.RecordCount + 1;
     tbCadastroBDNOME.AsString:= edNome.Text;
     tbCadastroBDSEXO.AsInteger:= cbSexo.ItemIndex;
     tbCadastroBDESTRANGEIRO.AsBoolean:= ckEstrangeiro.Checked;

end;

procedure TfrPrincipal.btMensagemClick(Sender: TObject);
begin
  ShowMessage(wTexto);
end;


procedure TfrPrincipal.edCodigoExit(Sender: TObject);
begin
  tbCadastro.IndexFieldNames:= 'BDCODIGO';

  if tbCadastro.FindKey([edCodigo.Text]) then
     begin
     edNome.Text:= tbCadastroBDNOME.AsString;
     cbSexo.ItemIndex:= tbCadastroBDSEXO.AsInteger;
     ckEstrangeiro.Checked:= tbCadastroBDESTRANGEIRO.AsBoolean;
     end
  else
     begin
     edNome.Text:= '';
     cbSexo.ItemIndex:= -1;
     ckEstrangeiro.Checked:= False;
     end
end;

procedure TfrPrincipal.btSairClick(Sender: TObject);
begin
  close;
end;

end.
