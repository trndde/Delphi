unit UDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TfrDataModule = class(TDataModule)
    dsCadastroCPF: TDataSource;
    tbCadastroCPF: TTable;
    dsCadastroCNPJ: TDataSource;
    tbCadastroCNPJ: TTable;
    tbCadastroCPFbdCodigo: TStringField;
    tbCadastroCPFbdNome: TStringField;
    tbCadastroCPFbdTelefone: TStringField;
    tbCadastroCPFbdEndereco: TStringField;
    tbCadastroCPFbdCEP: TStringField;
    tbCadastroCPFbdCPF: TStringField;
    tbCadastroCPFbdData: TStringField;
    tbCadastroCNPJbdCodigo: TStringField;
    tbCadastroCNPJbdNome: TStringField;
    tbCadastroCNPJbdTelefone: TStringField;
    tbCadastroCNPJbdEndereco: TStringField;
    tbCadastroCNPJbdCEP: TStringField;
    tbCadastroCNPJbdRazaoSocial: TStringField;
    tbCadastroCNPJbdCNPJ: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pCriarTabelaCadastroCPF;     //Declarar procedures de criar tabela e dar Ctrl+Shift+C
    procedure pCriarTabelaCadastroCNPJ;
  end;

var
  frDataModule: TfrDataModule;

implementation

{$R *.dfm}

{ TdmTabela }

procedure TfrDataModule.pCriarTabelaCadastroCNPJ;
begin
  tbCadastroCNPJ.Active:= False;                  //Configuração padrão de tabela, começa desativando ela
  tbCadastroCNPJ.DatabaseName:= 'C:\Tabelas';     //Nome da pasta (Database)
  tbCadastroCNPJ.TableName:= 'tCadastroCNPJ.db';  //Nome da tabela .db
  tbCadastroCNPJ.TableType:= ttParadox;           //Tipo da tabela, ttParadox

  tbCadastroCNPJ.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]); //Declarar IndexDefs pra poder usar o índice

  if not FileExists(tbCadastroCNPJ.DatabaseName + '\' + tbCadastroCNPJ.TableName) then  //Verificar existencia do arquivo de tabela, caso não exista
         tbCadastroCNPJ.CreateTable;                                                    //cria uma tabela

  tbCadastroCNPJ.Active := True;                //Ativa a tabela
  tbCadastroCNPJ.Open;                          //e abre
end;

procedure TfrDataModule.pCriarTabelaCadastroCPF;
begin
  tbCadastroCPF.Active:= False;
  tbCadastroCPF.DatabaseName:= 'C:\Tabelas';
  tbCadastroCPF.TableName:= 'tCadastroCPF.db';
  tbCadastroCPF.TableType:= ttParadox;

  tbCadastroCPF.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]);  

  if not FileExists(tbCadastroCPF.DatabaseName + '\' + tbCadastroCPF.TableName) then
         tbCadastroCPF.CreateTable;

  tbCadastroCPF.Active := True;
  tbCadastroCPF.Open;
end;

end.
