unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UCadastroCarro;

type
  TfrPrincipal = class(TForm)
    btCadastroCarro: TButton;
    btCadastroMoto: TButton;
    procedure btCadastroCarroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.btCadastroCarroClick(Sender: TObject);
var
 wTela: TfrCadastroCarro;
begin
 wTela := TfrCadastroCarro.Create(Self);
 wTela.Show;

end;

end.
