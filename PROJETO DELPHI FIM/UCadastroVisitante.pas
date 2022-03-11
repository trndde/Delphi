unit UCadastroVisitante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastroPadrao, StdCtrls, Mask, ExtCtrls;

type
  TfrCadastroVisitante = class(TfrCadastroPadrao)
    edPaciente: TLabeledEdit;
    edParentesco: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroVisitante: TfrCadastroVisitante;

implementation

{$R *.dfm}

end.
