unit UPadraoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UClasses, StdCtrls, ExtCtrls, UDataModule;

type
  TfrPadraoCadastro = class(TForm)
    edCodigoCliente: TLabeledEdit;
    edNomeCliente: TLabeledEdit;
    edTelefone: TLabeledEdit;
    edEndereco: TLabeledEdit;
    edCEP: TLabeledEdit;
    btSalvar: TButton;
    btConsulta: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPadraoCadastro: TfrPadraoCadastro;

implementation

{$R *.dfm}



end.
