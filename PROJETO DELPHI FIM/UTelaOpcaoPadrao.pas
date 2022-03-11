unit UTelaOpcaoPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrTelaOpcaoPadrao = class(TForm)
    btCadastrar: TButton;
    btConsultar: TButton;
    btSair: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTelaOpcaoPadrao: TfrTelaOpcaoPadrao;

implementation

{$R *.dfm}

end.
