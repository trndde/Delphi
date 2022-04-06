unit Unit2;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDataModule2 = class(TDataModule)
    DataSource1: TDataSource;
    Table1: TTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
