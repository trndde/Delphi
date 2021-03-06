unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls;

type
  TForm1 = class(TForm)
    lblNome: TLabel;
    lblIdade: TLabel;
    lblAltura: TLabel;
    lblPeso: TLabel;
    edNome: TEdit;
    edIdade: TEdit;
    edAltura: TEdit;
    edPeso: TEdit;
    ckDeficiente: TCheckBox;
    cbSexo: TComboBox;
    lblSexo: TLabel;
    btCadastro: TButton;
    btMostrar: TButton;
    cdsCadastro: TClientDataSet;
    edCodigo: TEdit;
    lblCodigo: TLabel;
    cdsCadastrobdNome: TStringField;
    cdsCadastrobdAltura: TStringField;
    cdsCadastrobdPeso: TStringField;
    cdsCadastrobdSexo: TIntegerField;
    cdsCadastrobdDeficiente: TBooleanField;
    cdsCadastrobdIdade: TStringField;
    cdsCadastrobdCodigo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btCadastroClick(Sender: TObject);
    procedure btMostrarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  cdsCadastro.CreateDataSet;
  cdsCadastro.Open

end;

procedure TForm1.btCadastroClick(Sender: TObject);
begin

  cdsCadastro.Insert;
  cdsCadastrobdNome.AsString:=edNome.Text;
  cdsCadastrobdIdade.AsString:=edIdade.Text;
  cdsCadastrobdAltura.AsString:=edAltura.Text;
  cdsCadastrobdPeso.AsString:=edPeso.Text;
  cdsCadastrobdCodigo.AsString:=edCodigo.Text;
  cdsCadastrobdSexo.AsInteger:=cbSexo.ItemIndex;
  cdsCadastrobdDeficiente.AsBoolean:=ckDeficiente.Checked;
  cdsCadastro.Post;
  
end;

procedure TForm1.btMostrarClick(Sender: TObject);

var
  wTexto: String;
  wSexo: String;
  wDeficiente: String;
begin
  wTexto:='';

  cdsCadastro.IndexFieldNames:='bdCodigo';

  cdsCadastro.First;

    while not cdsCadastro.Eof do
      begin

        if cdsCadastrobdSexo.AsInteger = 0 then
          wSexo:= 'Masculino'
        else
          wSexo:= 'Feminino';

        if cdsCadastrobdDeficiente.AsBoolean then
          wDeficiente:= 'Sim'
        else
          wDeficiente:= 'N?o';

          wTexto:= wTexto + #13 + 'C?digo: ' + cdsCadastrobdCodigo.AsString + ' Nome: ' + cdsCadastrobdNome.AsString + ' Idade: ' +
                   cdsCadastrobdIdade.AsString + ' Altura: ' + cdsCadastrobdAltura.AsString + ' Peso: ' + cdsCadastrobdPeso.AsString +
                   ' Sexo: ' +  wSexo + ' Deficiente: ' + wDeficiente;
          cdsCadastro.Next
      end;
showMessage (wTexto)

end;

procedure TForm1.edCodigoExit(Sender: TObject);
begin
cdsCadastro.IndexFieldNames:= 'bdCodigo';
  if cdsCadastro.FindKey([edCodigo.Text]) then
     begin
       edNome.Text:= cdsCadastrobdNome.AsString;
       edIdade.Text:= cdsCadastrobdIdade.AsString;
       edAltura.Text:= cdsCadastrobdAltura.AsString;
       edPeso.Text:= cdsCadastrobdPeso.AsString;
       cbSexo.ItemIndex:= cdsCadastrobdSexo.AsInteger;
       ckDeficiente.Checked:= cdsCadastrobdDeficiente.AsBoolean;
     end;
end;

end.
