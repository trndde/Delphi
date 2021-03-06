unit UDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TfrDataModule = class(TDataModule)
    tbCadastroProduto: TTable;
    tbCadastroFornecedor: TTable;
    dsCadastroProduto: TDataSource;
    dsCadastroFornecedor: TDataSource;
    tbCadastroProdutobdCodigo: TIntegerField;
    tbCadastroProdutobdMarca: TStringField;
    tbCadastroProdutobdModelo: TStringField;
    tbCadastroProdutobdCor: TStringField;
    tbCadastroProdutobdTipo: TStringField;
    tbCadastroFornecedorbdCodigo: TIntegerField;
    tbCadastroFornecedorbdNome: TStringField;
    tbCadastroFornecedorbdCNPJ: TStringField;
    tbCadastroFornecedorbdTelefone: TStringField;
    tbCadastroFornecedorbdEndereco: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pCriarTabelaCadastroProduto;
    procedure pCriarTabelaCadastroFornecedor;

  end;

var
  frDataModule: TfrDataModule;

implementation

{$R *.dfm}

{ TfrDataModule }

procedure TfrDataModule.pCriarTabelaCadastroFornecedor;
begin


  tbCadastroFornecedor.Active:= False;
  tbCadastroFornecedor.DatabaseName:= 'C:\Tabelas';
  tbCadastroFornecedor.TableName:= 'tCadastroFornecedor.db';
  tbCadastroFornecedor.TableType:= ttParadox;


  if not FileExists(tbCadastroFornecedor.DatabaseName + '\' + tbCadastroFornecedor.TableName) then
     begin
         tbCadastroFornecedor.IndexDefs.Add('iCodigo', 'bdCodigo',[ixPrimary, ixUnique]);
         tbCadastroFornecedor.CreateTable;
     end;

  tbCadastroFornecedor.Active:= True;
  tbCadastroFornecedor.Open;
end;

procedure TfrDataModule.pCriarTabelaCadastroProduto;
begin
  tbCadastroProduto.Active:= False;
  tbCadastroProduto.DatabaseName:= 'C:\Tabelas';
  tbCadastroProduto.TableName:= 'tCadastroProduto.db';
  tbCadastroProduto.TableType:= ttParadox;


  if not FileExists(tbCadastroProduto.DatabaseName + '\' + tbCadastroProduto.TableName) then
      begin
         tbCadastroProduto.IndexDefs.Add('iCodigo', 'bdCodigo',[ixPrimary, ixUnique]);
         tbCadastroProduto.CreateTable;
      end;

  tbCadastroProduto.Active:= True;
  tbCadastroProduto.Open;
end;

end.
