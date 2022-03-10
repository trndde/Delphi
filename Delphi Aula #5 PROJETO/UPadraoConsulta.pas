unit UPadraoConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, UDataModule;

type
  TfrPadraoConsulta = class(TForm)
    btExcluir: TButton;
    grPadrao: TDBGrid;
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPadraoConsulta: TfrPadraoConsulta;

implementation

{$R *.dfm}

procedure TfrPadraoConsulta.btExcluirClick(Sender: TObject);  //Procedure simples pro botão excluir
begin
grPadrao.DataSource.DataSet.Delete;       //DBGrid, chama data source e comunica pro data set deletar a linha selecionada 
end;

end.
