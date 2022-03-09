unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UCadastroCPF, UCadastroCNPJ;

type
  TfrPrincipal = class(TForm)
    btCadastroCPF: TButton;
    btCadastroCNPJ: TButton;
    procedure btCadastroCPFClick(Sender: TObject);
    procedure btCadastroCNPJClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.btCadastroCPFClick(Sender: TObject);
var
  wTelaCPF: TfrCadastroPessoaFisica;
begin
  wTelaCPF := TfrCadastroPessoaFisica.Create(Self);
  wTelaCPF.Show;
end;

procedure TfrPrincipal.btCadastroCNPJClick(Sender: TObject);
var
  wTelaCNPJ: TfrCadastroPessoaJuridica;
begin
  wTelaCNPJ := TfrCadastroPessoaJuridica.Create(Self);
  wTelaCNPJ.Show;
end;

end.
