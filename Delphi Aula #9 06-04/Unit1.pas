unit Unit1;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TfrDataModule = class(TDataModule)
    dsCadastro: TDataSource;
    tbCadastro: TTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDataModule: TfrDataModule;

implementation

{$R *.dfm}

end.
