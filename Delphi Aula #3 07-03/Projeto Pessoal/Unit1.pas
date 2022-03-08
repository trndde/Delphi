unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edCodigo: TEdit;
    edTamanho: TEdit;
    Label2: TLabel;
    edDescricao: TEdit;
    Label3: TLabel;
    btAdicionar: TButton;
    btExcluir: TButton;
    tbCadastro: TTable;
    dsCadastro: TDataSource;
    DBGrid1: TDBGrid;
    tbCadastrobdCodigo: TStringField;
    tbCadastrobdTamanho: TStringField;
    tbCadastrobdDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
  private
    { Private declarations }

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
  if not DirectoryExists (fDiretorio) then
         ForceDirectories (fDiretorio);

  tbCadastro.Active:= False;
  tbCadastro.DatabaseName:= (fDiretorio);
  tbCadastro.TableName:= 'tCadastro.db';
  tbCadastro.TableType:= ttParadox;

  tbCadastro.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]);

  if not FileExists(tbCadastro.DatabaseName + '\' + tbCadastro.TableName) then
         tbCadastro.CreateTable;

  tbCadastro.Open;
  tbCadastro.Active := True;

end;

function Tform1.fDiretorio: String;
begin
  result:= ('C:\Users\prog11\Desktop\Delphi Aulas\Delphi Aula #3 07-03\Projeto Pessoal\Tabelas')
end;

procedure TForm1.btAdicionarClick(Sender: TObject);
begin
  tbCadastro.IndexFieldNames:= 'bdCodigo';
  if tbCadastro.FindKey([edCodigo.Text])  then
     tbCadastro.Edit
  else
     tbCadastro.Insert;

  tbCadastrobdCodigo.AsString:= edCodigo.Text;
  tbCadastrobdTamanho.AsString:= edTamanho.Text;
  tbCadastrobdDescricao.AsString:= edDescricao.Text;

     tbCadastro.Post;
end;

procedure TForm1.edCodigoExit(Sender: TObject);
begin
tbCadastro.IndexFieldNames := 'bdCodigo';
  if tbCadastro.FindKey([edCodigo.Text]) then
     begin
       edTamanho.Text:= tbCadastrobdTamanho.AsString;
       edDescricao.Text:= tbCadastrobdDescricao.AsString;
     end

  else
     begin
       edTamanho.Text:= '' ;
       edDescricao.Text:= '';
     end;

tbCadastro.IndexFieldNames:= 'bdCodigo';
btExcluir.Enabled:= tbCadastro.FindKey([edCodigo.Text]);
end;

procedure TForm1.btExcluirClick(Sender: TObject);
begin
  tbCadastro.IndexFieldNames:= 'bdCodigo';
  if tbCadastro.FindKey([edCodigo.Text]) then
     tbCadastro.Delete;
end;

procedure TForm1.edCodigoEnter(Sender: TObject);
begin
btExcluir.Enabled:= False;
end;

end.
