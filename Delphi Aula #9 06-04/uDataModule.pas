unit uDataModule;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TfrDataModule = class(TDataModule)
    dsCadastro: TDataSource;
    tbCadastro: TTable;
    tbCadastroBDCODIGO: TIntegerField;
    tbCadastroBDRAZAO: TStringField;
    tbCadastroBDNOMEFANTASIA: TStringField;
    tbCadastroBDCNPJ: TStringField;
    tbCadastroBDINSCRICAO: TStringField;
    tbCadastroBDCNAE: TStringField;
    tbCadastroBDEMAIL: TStringField;
    tbCadastroBDLOGRADOURO: TStringField;
    tbCadastroBDNUMERO: TStringField;
    tbCadastroBDCEP: TStringField;
    tbCadastroBDBAIRRO: TStringField;
    tbCadastroBDCIDADE: TStringField;
    tbCadastroBDESTADO: TStringField;
    tbCadastroBDTELEFONE: TStringField;
    tbCadastroBDCELULAR: TStringField;
    tbCadastroBDINICIOATIVIDADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDataModule: TfrDataModule;

implementation

{$R *.dfm}

procedure TfrDataModule.DataModuleCreate(Sender: TObject);
begin
  frDataModule.tbCadastro.Active:= False;
  frDataModule.tbCadastro.DatabaseName:= 'C:\Users\prog11\Desktop\Delphi Aulas\Delphi Aula #9 06-04\Database';
  frDataModule.tbCadastro.TableName:= 'TCadastro.db';
  frDataModule.tbCadastro.TableType:= ttParadox;


  if not FileExists(frDataModule.tbCadastro.DatabaseName + '\' + frDataModule.tbCadastro.TableName) then
     begin
        frDataModule.tbCadastro.IndexDefs.Add('iCodigo', 'BDCODIGO', [ixPrimary, ixUnique]);
        frDataModule.tbCadastro.CreateTable;
     end;

  frDataModule.tbCadastro.Active:= True;
  frDataModule.tbCadastro.Open;
end;

end.
