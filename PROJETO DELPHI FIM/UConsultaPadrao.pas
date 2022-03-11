unit UConsultaPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, UDataModule;

type
  TfrConsultaPadrao = class(TForm)
    btSair: TButton;
    grPadrao: TDBGrid;
    btExcluir: TButton;
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsultaPadrao: TfrConsultaPadrao;

implementation

{$R *.dfm}

procedure TfrConsultaPadrao.btExcluirClick(Sender: TObject);
begin
  grPadrao.DataSource.DataSet.Delete;
end;

end.
