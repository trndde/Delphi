unit UDataModule;

interface

uses
  SysUtils, Classes, DBTables, DB, DBClient;

type
  TfrDataModule = class(TDataModule)
    dsPaciente: TDataSource;
    dsVisitante: TDataSource;
    dsMedico: TDataSource;
    cdsCadastroVisitante: TClientDataSet;
    tbCadastroPaciente: TTable;
    tbCadastroMedico: TTable;
    tbCadastroPacientebdCodigo: TIntegerField;
    tbCadastroPacientebdNome: TStringField;
    tbCadastroPacientebdData: TStringField;
    tbCadastroPacientebdCPF: TStringField;
    tbCadastroPacientebdRG: TStringField;
    tbCadastroPacientebdSexo: TIntegerField;
    tbCadastroPacientebdTelefone: TStringField;
    tbCadastroPacientebdEmail: TStringField;
    tbCadastroPacientebdEndereco: TStringField;
    tbCadastroPacientebdCEP: TStringField;
    tbCadastroPacientebdCidade: TStringField;
    tbCadastroPacientebdEstado: TStringField;
    tbCadastroPacientebdPais: TStringField;
    tbCadastroPacientebdContatoAcompanhante: TStringField;
    tbCadastroPacientebdPrioridade: TIntegerField;
    cdsCadastroVisitantebdCodigo: TStringField;
    cdsCadastroVisitantebdNome: TStringField;
    cdsCadastroVisitantebdData: TStringField;
    cdsCadastroVisitantebdCPF: TStringField;
    cdsCadastroVisitantebdRG: TStringField;
    cdsCadastroVisitantebdSexo: TIntegerField;
    cdsCadastroVisitantebdPaciente: TStringField;
    cdsCadastroVisitantebdParentesco: TStringField;
    cdsCadastroVisitantebdTelefone: TStringField;
    cdsCadastroVisitantebdEmail: TStringField;
    cdsCadastroVisitantebdEndereco: TStringField;
    cdsCadastroVisitantebdCEP: TStringField;
    cdsCadastroVisitantebdCidade: TStringField;
    cdsCadastroVisitantebdEstado: TStringField;
    cdsCadastroVisitantebdPais: TStringField;
    tbCadastroMedicobdCodigo: TIntegerField;
    tbCadastroMedicobdNome: TStringField;
    tbCadastroMedicobdData: TStringField;
    tbCadastroMedicobdCPF: TStringField;
    tbCadastroMedicobdRG: TStringField;
    tbCadastroMedicobdSexo: TIntegerField;
    tbCadastroMedicobdCRM: TStringField;
    tbCadastroMedicobdEspecialidade: TStringField;
    tbCadastroMedicobdTelefone: TStringField;
    tbCadastroMedicobdEmail: TStringField;
    tbCadastroMedicobdEndereco: TStringField;
    tbCadastroMedicobdCEP: TStringField;
    tbCadastroMedicobdCidade: TStringField;
    tbCadastroMedicobdEstado: TStringField;
    tbCadastroMedicobdPais: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pCriarTabelaCadastroPaciente;
  end;

var
  frDataModule: TfrDataModule;

implementation

{$R *.dfm}

{ TDataModule1 }

procedure TfrDataModule.pCriarTabelaCadastroPaciente;
begin
  tbCadastroPaciente.Active:= False;
  tbCadastroPaciente.DatabaseName:= 'C:\Tabelas';
  tbCadastroPaciente.TableName:= 'tCadastroPaciente.db';
  tbCadastroPaciente.TableType:= ttParadox;


  if not FileExists(tbCadastroPaciente.DatabaseName + '\' + tbCadastroPaciente.TableName) then
    begin
      tbCadastroPaciente.IndexDefs.Add('iCodigo', 'bdCodigo', [ixPrimary, ixUnique]);
      tbCadastroPaciente.CreateTable;
    end;

  tbCadastroPaciente.Active:= True;
  tbCadastroPaciente.Open;
end;

end.
