unit uConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;
                       
type
  TfrConsulta = class(TForm)
    DBGrid1: TDBGrid;
    btExcluir: TButton;
    btSair: TButton;
    procedure btExcluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConsulta: TfrConsulta;

implementation

{$R *.dfm}

procedure TfrConsulta.btExcluirClick(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Delete;
end;

procedure TfrConsulta.btSairClick(Sender: TObject);
begin
 close;
end;

end.
