unit uDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdmCadastro = class(TDataModule)
    dtCadastroCliente: TDataSource;
    tbCadastroCliente: TTable;
    dtCadastroEmpresa: TDataSource;
    tbCadastroEmpresa: TTable;
    tbCadastroEmpresabdCodigo: TStringField;
    tbCadastroEmpresabdNome: TStringField;
    tbCadastroEmpresabdCnpj: TStringField;
    tbCadastroClientebdCodigo: TStringField;
    tbCadastroClientebdNome: TStringField;
    tbCadastroClientebdEndereco: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function fDiretorioEmpresa : String;
    Function fDiretorioCliente : String;
    procedure  pCriartbEmpresa;
    procedure pCriartbCliente;
  end;

var
  dmCadastro: TdmCadastro;

implementation

{$R *.dfm}

{ TdmCadastro }

function TdmCadastro.fDiretorioCliente: String;
begin
  result := 'C:\Users\prog10\Desktop\estagio\09.03\Exercicio\tabelaCliente';
end;

function TdmCadastro.fDiretorioEmpresa: String;
begin
  result := 'C:\Users\prog10\Desktop\estagio\09.03\Exercicio\tabelaEmpresa';
end;

procedure TdmCadastro.pCriartbCliente;
begin
  if not DirectoryExists(fDiretorioCliente) then
         ForceDirectories(fDiretorioCliente);

  tbCadastroCliente.Active := False;
  tbCadastroCliente.DatabaseName := fDiretorioCliente;
  tbCadastroCliente.TableName :=  'tbCadastroCliente.db';
  tbCadastroCliente.TableType :=  ttParadox;

  if not FileExists(tbCadastroCliente.DatabaseName + '\' + tbCadastroCliente.TableName) then
         tbCadastroCliente.CreateTable;

  tbCadastroCliente.Active := true;
  tbCadastroCliente.Open;
end;

procedure TdmCadastro.pCriartbEmpresa;
begin
  if not DirectoryExists(fDiretorioEmpresa) then
         ForceDirectories(fDiretorioEmpresa);

  tbCadastroEmpresa.Active := False;
  tbCadastroEmpresa.DatabaseName := fDiretorioEmpresa;
  tbCadastroEmpresa.TableName :=  'tbCadastroEmpresa.db';
  tbCadastroEmpresa.TableType :=  ttParadox;

  if not FileExists(tbCadastroEmpresa.DatabaseName + '\' + tbCadastroEmpresa.TableName) then
         tbCadastroEmpresa.CreateTable;

  tbCadastroEmpresa.Active := true;
  tbCadastroEmpresa.Open;
end;

end.
