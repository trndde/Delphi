unit UCadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UDataModule;

type
  TfrCadastroPadrao = class(TForm)
    edCodigo: TLabeledEdit;
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

end.
