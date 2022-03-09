unit Fcadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Ucadastro, StdCtrls;

type
  TForm1 = class(TForm)
    edCodigo: TEdit;
    edNome: TEdit;
    edIdade: TEdit;
    edEndereco: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btGravar: TButton;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Cadastro: Tcadastro;
implementation



{$R *.dfm}

procedure TForm1.btGravarClick(Sender: TObject);
begin
  Cadastro:=Tcadastro.Create();

  cadastro.codigo:=StrToInt(edCodigo.Text);
  cadastro.nome:=edNome.Text;
  cadastro.idade:=StrToInt(edIdade.Text);
  cadastro.endereco:=edEndereco.Text;
end;

end.
