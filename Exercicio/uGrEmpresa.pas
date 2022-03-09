unit uGrEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uGrPrincipal, Grids, DBGrids, uDataModule;

type
  TGrEmpresa = class(TfrGridPrincipal)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GrEmpresa: TGrEmpresa;

implementation

{$R *.dfm}

end.
