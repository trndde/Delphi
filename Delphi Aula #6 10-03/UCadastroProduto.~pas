unit UCadastroProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastroPadrao, StdCtrls, ExtCtrls, UClasses, UDataModule, UConsultaProduto;

type
  TfrCadastroProduto = class(TfrCadastroPadrao)
    edTipo: TLabeledEdit;
    edMarca: TLabeledEdit;
    edModelo: TLabeledEdit;
    edCor: TLabeledEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroProduto: TfrCadastroProduto;

implementation

uses DBTables, DB;

{$R *.dfm}

procedure TfrCadastroProduto.btSalvarClick(Sender: TObject);
var
  wCadastro: TCadastroProduto;
begin
  inherited;
  wCadastro:= TCadastroProduto.Create;

  wCadastro.wCodigo:= StrToInt(edCodigo.Text);
  wCadastro.wTipo:= edTipo.Text;
  wCadastro.wMarca:= edMarca.Text;
  wCadastro.wModelo:= edModelo.Text;
  wCadastro.wCor:= edCor.Text;
  

  frDataModule.tbCadastroProduto.IndexFieldNames:= 'bdCodigo';

  if frDataModule.tbCadastroProduto.FindKey([edCodigo.Text]) then
     frDataModule.tbCadastroProduto.Edit
  else
     frDataModule.tbCadastroProduto.Insert;

  frDataModule.tbCadastroProduto.FieldByName('bdCodigo').AsInteger:= wCadastro.wCodigo;
  frDataModule.tbCadastroProduto.FieldByName('bdTipo').AsString:= wCadastro.wTipo;
  frDataModule.tbCadastroProduto.FieldByName('bdMarca').AsString:= wCadastro.wMarca;
  frDataModule.tbCadastroProduto.FieldByName('bdModelo').AsString:= wCadastro.wModelo;
  frDataModule.tbCadastroProduto.FieldByName('bdCor').AsString:= wCadastro.wCor;

  frDataModule.tbCadastroProduto.Post;

end;

procedure TfrCadastroProduto.btConsultarClick(Sender: TObject);
var
  wTelaConsultaProduto: TfrConsultaProduto;
begin
  inherited;
  wTelaConsultaProduto:= TfrConsultaProduto.Create(Self);
  wTelaConsultaProduto.Show;

end;

procedure TfrCadastroProduto.edCodigoExit(Sender: TObject);
begin
  inherited;

  frDataModule.tbCadastroProduto.IndexFieldNames:= 'bdCodigo';              //Puxar as informações da tabela e jogar pro Edit

  if frDataModule.tbCadastroProduto.FindKey([edCodigo.Text]) then
     begin
       edMarca.Text:= frDataModule.tbCadastroProdutobdMarca.AsString;      //Colocando as informações que foram salvas na tabela pra dentro dos Edits
       edModelo.Text:= frDataModule.tbCadastroProdutobdModelo.AsString;
       edCor.Text:= frDataModule.tbCadastroProdutobdCor.AsString;
       edTipo.Text:= frDataModule.tbCadastroProdutobdTipo.AsString;
     end

     else
       begin
         edMarca.Text:= '';
         edModelo.Text:= '';
         edCor.Text:= '';
         edTipo.Text:= '';
       end;

end;

procedure TfrCadastroProduto.FormCreate(Sender: TObject);

begin
  inherited;

  frDataModule.pCriarTabelaCadastroProduto;
end;

end.
