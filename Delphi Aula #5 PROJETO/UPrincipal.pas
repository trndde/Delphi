unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UCadastroCPF, UCadastroCNPJ, UConsultaCPF, UConsultaCNPJ,
  ExtCtrls;     //Colocar Units das telas que forem chamadas a partir dessa tela

type
  TfrPrincipal = class(TForm)
    btCadastroCPF: TButton;
    btCadastroCNPJ: TButton;
    btConsultaCPF: TButton;
    btConsultaCNPJ: TButton;
    Panel1: TPanel;
    procedure btCadastroCPFClick(Sender: TObject);
    procedure btCadastroCNPJClick(Sender: TObject);
    procedure btConsultaCPFClick(Sender: TObject);
    procedure btConsultaCNPJClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.btCadastroCPFClick(Sender: TObject);  //Procedure pra abrir outra tela do programa.
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

procedure TfrPrincipal.btConsultaCPFClick(Sender: TObject);
var
  wTelaConsultaCPF: TfrConsultaPessoaFisica;
begin
  wTelaConsultaCPF:= TfrConsultaPessoaFisica.Create(Self);
  wTelaConsultaCPF.Show;
end;

procedure TfrPrincipal.btConsultaCNPJClick(Sender: TObject);
var
  wTelaConsultaCNPJ: TfrConsultaPessoaJuridica;
begin
  wTelaConsultaCNPJ:= TfrConsultaPessoaJuridica.Create(Self);
  wTelaConsultaCNPJ.Show;
end;

end.
