unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UCadastroProduto, UCadastroFornecedor, UConsultaProduto, UConsultaFornecedor;

type
  TfrPrincipal = class(TForm)
    btCadastroProduto: TButton;
    btCadastroFornecedor: TButton;
    btConsultaProduto: TButton;
    btConsultaFornecedor: TButton;
    procedure btCadastroProdutoClick(Sender: TObject);
    procedure btCadastroFornecedorClick(Sender: TObject);
    procedure btConsultaProdutoClick(Sender: TObject);
    procedure btConsultaFornecedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.btCadastroProdutoClick(Sender: TObject);
var
  wTelaCadastroProduto: TfrCadastroProduto;
begin
  wTelaCadastroProduto:= TfrCadastroProduto.Create(Self);
  wTelaCadastroProduto.Show;
end;

procedure TfrPrincipal.btCadastroFornecedorClick(Sender: TObject);
var
  wTelaCadastroFornecedor: TfrCadastroFornecedor;
begin
  wTelaCadastroFornecedor:= TfrCadastroFornecedor.Create(Self);
  wTelaCadastroFornecedor.Show;
end;

procedure TfrPrincipal.btConsultaProdutoClick(Sender: TObject);
var
  wTelaConsultaProduto: TfrConsultaProduto;
begin
  wTelaConsultaProduto:= TfrConsultaProduto.Create(Self);
  wTelaConsultaProduto.Show;

end;

procedure TfrPrincipal.btConsultaFornecedorClick(Sender: TObject);
var
  wTelaConsultaFornecedor: TfrConsultaFornecedor;
begin
  wTelaConsultaFornecedor:= TfrConsultaFornecedor.Create(Self);
  wTelaConsultaFornecedor.Show;
end;

end.
