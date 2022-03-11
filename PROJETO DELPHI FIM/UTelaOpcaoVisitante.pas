unit UTelaOpcaoVisitante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaOpcaoPadrao, StdCtrls, UCadastroVisitante, UConsultaVisitante;

type
  TfrTelaOpcaoVisitante = class(TfrTelaOpcaoPadrao)
    procedure btCadastrarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTelaOpcaoVisitante: TfrTelaOpcaoVisitante;

implementation

{$R *.dfm}

procedure TfrTelaOpcaoVisitante.btCadastrarClick(Sender: TObject);
var
  wTelaCadastroVisitante: TfrCadastroVisitante;
begin
  inherited;
  wTelaCadastroVisitante:= TfrCadastroVisitante.Create(Self);
  wTelaCadastroVisitante.Show; 

end;

procedure TfrTelaOpcaoVisitante.btConsultarClick(Sender: TObject);
var
  wTelaConsultaVisitante: TfrConsultaVisitante;
begin
  inherited;
  wTelaConsultaVisitante:= TfrConsultaVisitante.Create(Self);
  wTelaConsultaVisitante.Show;
end;

end.
