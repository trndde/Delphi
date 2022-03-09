unit uCadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uDataModule;

type
  TfrCadastroPadrao = class(TForm)
    edCodigo: TEdit;
    lbCodigo: TLabel;
    edNome: TEdit;
    lbNome: TLabel;
    btSalvar: TButton;
    btConsultar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroPadrao: TfrCadastroPadrao;

implementation

{$R *.dfm}

{ TfrCadastroPadrao }

end.
