unit UCadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastroPadrao, StdCtrls, ExtCtrls, UClasses, UDataModule, UConsultaFornecedor;

type
  TfrCadastroFornecedor = class(TfrCadastroPadrao)
    edNome: TLabeledEdit;
    edCNPJ: TLabeledEdit;
    edTelefone: TLabeledEdit;
    edEndereco: TLabeledEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroFornecedor: TfrCadastroFornecedor;

implementation

{$R *.dfm}

procedure TfrCadastroFornecedor.btSalvarClick(Sender: TObject);
var
  wCadastro: TCadastroFornecedor;
begin
  inherited;
  wCadastro:= TCadastroFornecedor.Create;

  wCadastro.wCodigo:= StrToInt(edCodigo.Text);
  wCadastro.wNome:= edNome.Text;
  wCadastro.wCNPJ:= edCNPJ.Text;
  wCadastro.wTelefone:= edTelefone.Text;
  wCadastro.wEndereco:= edEndereco.Text;

  frDataModule.pCriarTabelaCadastroFornecedor;
  frDataModule.tbCadastroFornecedor.Insert;

  frDataModule.tbCadastroFornecedor.FieldByName('bdCodigo').AsInteger:= wCadastro.wCodigo;
  frDataModule.tbCadastroFornecedor.FieldByName('bdNome').AsString:= wCadastro.wNome;
  frDataModule.tbCadastroFornecedor.FieldByName('bdCNPJ').AsString:= wCadastro.wCNPJ;
  frDataModule.tbCadastroFornecedor.FieldByName('bdTelefone').AsString:= wCadastro.wTelefone;
  frDataModule.tbCadastroFornecedor.FieldByName('bdEndereco').AsString:= wCadastro.wEndereco;

  frDataModule.tbCadastroFornecedor.Post;

end;

procedure TfrCadastroFornecedor.btConsultarClick(Sender: TObject);
var
  wTelaConsultaFornecedor: TfrConsultaFornecedor;
begin
  inherited;
  wTelaConsultaFornecedor:= TfrConsultaFornecedor.Create(Self);
  wTelaConsultaFornecedor.Show;

end;

procedure TfrCadastroFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  frDataModule.pCriarTabelaCadastroFornecedor;
end;

procedure TfrCadastroFornecedor.edCodigoExit(Sender: TObject);
begin
  inherited;
  frDataModule.tbCadastroFornecedor.IndexFieldNames:= 'bdCodigo';

  if frDataModule.tbCadastroFornecedor.FindKey([edCodigo.Text]) then
     frDataModule.tbCadastroFornecedor.Edit
  else
     frDataModule.tbCadastroFornecedor.Insert;


  frDataModule.tbCadastroFornecedor.IndexFieldNames:= 'bdCodigo';

  if frDataModule.tbCadastroFornecedor.FindKey([edCodigo.Text]) then
     begin
       edNome.Text:= frDataModule.tbCadastroFornecedorbdNome.AsString;
       edCNPJ.Text:= frDataModule.tbCadastroFornecedorbdCNPJ.AsString;
       edTelefone.Text:= frDataModule.tbCadastroFornecedorbdTelefone.AsString;
       edEndereco.Text:= frDataModule.tbCadastroFornecedorbdEndereco.AsString;
     end
  else
     begin
       edNome.Text:= '';
       edCNPJ.Text:= '';
       edTelefone.Text:= '';
       edEndereco.Text:= '';
     end;
end;

end.
