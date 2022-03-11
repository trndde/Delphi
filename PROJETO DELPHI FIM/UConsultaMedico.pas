unit UConsultaMedico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsultaPadrao, Grids, DBGrids, StdCtrls;

type
  TfrConsultaMedico = class(TfrConsultaPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsultaMedico: TfrConsultaMedico;

implementation

{$R *.dfm}

end.
