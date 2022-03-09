unit uGrPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids ;

type
  TfrGridPrincipal = class(TForm)
    grPadrao: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frGridPrincipal: TfrGridPrincipal;

implementation

{$R *.dfm}

end.
