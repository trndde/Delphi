unit UCadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, UDataModule;

type
  TfrCadastroPadrao = class(TForm)
    btSalvar: TButton;
    btSalvarTxt: TButton;
    btConsultar: TButton;
    btSair: TButton;
    edCodigo: TLabeledEdit;
    edNome: TLabeledEdit;
    edRG: TLabeledEdit;
    edCPF: TMaskEdit;
    cbSexo: TComboBox;
    edDataNascimento: TMaskEdit;
    edTelefone: TMaskEdit;
    edEmail: TLabeledEdit;
    edEndereco: TLabeledEdit;
    edCEP: TMaskEdit;
    edCidade: TLabeledEdit;
    edEstado: TLabeledEdit;
    edPais: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCadastroPadrao: TfrCadastroPadrao;

implementation

{$R *.dfm}

end.
