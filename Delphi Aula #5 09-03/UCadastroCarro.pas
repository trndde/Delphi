unit UCadastroCarro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastroPadrao, StdCtrls, UClasses, UDataModule, Grids, DBGrids;

type
  TfrCadastroCarro = class(TfrCadastroPadrao)
    edModelo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edCodigo: TEdit;
    grModelosCarro: TDBGrid;
    btExcluir: TButton;
    procedure btSalvarClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroCarro: TfrCadastroCarro;

implementation

{$R *.dfm}

procedure TfrCadastroCarro.btSalvarClick(Sender: TObject);
var
  wCarro: TCarro;
begin
  inherited;
  wCarro := TCarro.Create;
  wCarro.wNomeMarca:= edMarca.Text;
  wCarro.wNomeModeloCarro:= edModelo.Text;
  wCarro.wCodigoCarro:= edCodigo.Text;

  ShowMessage('C?digo: ' + wCarro.wCodigoCarro + ' Marca: ' + wCarro.wNomeMarca + ' Modelo: ' + wCarro.wNomeModeloCarro);

  frDataModule.pCriaTabelaCadastroCarro; //Chama Procedure pra criar tabela

  frDataModule.tbCadastroCarro.Insert;
  frDataModule.tbCadastroCarro.FieldByName('bdMarca').AsString := wCarro.wNomeMarca;
  frDataModule.tbCadastroCarro.FieldByName('bdModelo').AsString := wCarro.wNomeModeloCarro;
  frDataModule.tbCadastroCarro.FieldByName('bdCodigo').AsString := wCarro.wCodigoCarro;
  frDataModule.tbCadastroCarro.Post;


end;


end.
