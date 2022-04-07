unit uConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDataModule, StdCtrls, Grids, DBGrids;

type
  TfrConsulta = class(TForm)
    DBGrid1: TDBGrid;
    btExcluir: TButton;
    Button2: TButton;
    lbSoletrado: TLabel;
    procedure btExcluirClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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


              //Procedure de PESQUISA SOLETRADA\\
procedure TfrConsulta.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 lbSoletrado.Caption:= lbSoletrado.Caption + Key;

 if lbSoletrado.Caption <> '' then
    begin
      DBGrid1.DataSource.DataSet.First;
      while not DBGrid1.DataSource.DataSet.Eof do  //Loop pra pesquisar no Grid até o fim do arquivo (EOF - End of File)
        begin
          if Pos (UpperCase(lbSoletrado.Caption),UpperCase(DBGrid1.DataSource.DataSet.FieldByName('BDRAZAO').AsString)) > 0 then  //*UpperCase utilizado pra nao diferenciar letra maiuscula e minuscula na pesquisa! 
             Break;  //Método Pos, tem dois parametros separados por virgula: Pos(O QUE VAI SER PESQUISADO, ONDE VAI SER PESQUISADO) e retorna um valor

             DBGrid1.DataSource.DataSet.Next;
        end
    end
end;

procedure TfrConsulta.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) or (key = VK_DOWN) then
     lbSoletrado.Caption := '';

  if key = VK_BACK then
     lbSoletrado.Caption := Copy(lbSOletrado.Caption, 1, length(lbSoletrado.Caption)-2)
end;

end.
