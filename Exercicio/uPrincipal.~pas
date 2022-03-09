unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uCadastroCliente, uCadastroEmpresa, uGrEmpresa;

type
  TfrPrincipal = class(TForm)
    btCadastroCliente: TButton;
    btCadastroEmpresa: TButton;
    procedure btCadastroClienteClick(Sender: TObject);
    procedure btCadastroEmpresaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.btCadastroClienteClick(Sender: TObject);
var
 wTela : TfrCadastroCliente;
begin
  wTela := TfrCadastroCliente.Create(self);
  wTela.Show;
end;

procedure TfrPrincipal.btCadastroEmpresaClick(Sender: TObject);
 var
  wTela2 : TfrCadastroEmpresa;
begin
  wTela2 := TfrCadastroEmpresa.Create(self);
  wTela2.Show;
end;


end.
