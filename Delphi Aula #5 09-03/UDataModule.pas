unit UDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TfrDataModule = class(TDataModule)
    tbCadastroCarro: TTable;
    dsCadastroCarro: TDataSource;
    tbCadastroCarrobdMarca: TStringField;
    tbCadastroCarrobdModelo: TStringField;
    tbCadastroCarrobdCodigo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pCriaTabelaCadastroCarro;
  end;

var
  frDataModule: TfrDataModule;

implementation

{$R *.dfm}

{ TfrDataModule }

procedure TfrDataModule.pCriaTabelaCadastroCarro;
begin
  tbCadastroCarro.Active := False;
  tbCadastroCarro.DatabaseName:= 'C:\Users\prog11\Desktop\Delphi Aula #5 09-03\Tabelas';
  tbCadastroCarro.TableName:= 'tCadastroCarro.db';
  tbCadastroCarro.TableType:= ttParadox;

  if not FileExists(tbCadastroCarro.DatabaseName + '\' + tbCadastroCarro.TableName) then
         tbCadastroCarro.CreateTable;

  tbCadastroCarro.Active := True;
  tbCadastroCarro.Open;
end;

end.
