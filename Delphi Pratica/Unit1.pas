unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edNome: TEdit;
    edCPF: TEdit;
    edData: TEdit;
    edTelefone: TEdit;
    Label5: TLabel;
    cbEstado: TComboBox;
    edEndereco: TEdit;
    Label6: TLabel;
    btAdicionar: TButton;
    btSalvar: TButton;
    btMostrar: TButton;
    cdsCadastro: TClientDataSet;
    dsCadastro: TDataSource;
    cdsCadastrobdNome: TStringField;
    cdsCadastrobdData: TStringField;
    cdsCadastrobdTelefone: TStringField;
    cdsCadastrobdEstado: TIntegerField;
    cdsCadastrobdEndereco: TStringField;
    cdsCadastrobdCPF: TStringField;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btMostrarClick(Sender: TObject);
    procedure edCPFKeyPress(Sender: TObject; var Key: Char);
    procedure edDataKeyPress(Sender: TObject; var Key: Char);
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
 cdsCadastro.Open;
end;

procedure TForm1.btAdicionarClick(Sender: TObject);
begin
  cdsCadastro.IndexFieldNames:='bdCPF';
  if cdsCadastro.FindKey([edCPF.Text]) then
     cdsCadastro.Edit
  else
     cdsCadastro.Insert;



  cdsCadastro.Insert;
  cdsCadastrobdNome.AsString:=edNome.Text;
  cdsCadastrobdCPF.AsString:=edCPF.Text;
  cdsCadastrobdData.AsString:=edData.Text;
  cdsCadastrobdEstado.AsInteger:=cbEstado.ItemIndex;
  cdsCadastrobdTelefone.AsString:=edTelefone.Text;
  cdsCadastrobdEndereco.AsString:=edEndereco.Text;
  cdsCadastro.Post;
end;

procedure TForm1.btMostrarClick(Sender: TObject);
var
  wTexto: String;
  wEstado: String;
begin
  wTexto:='';

  cdsCadastro.IndexFieldNames:='bdCPF';
  cdsCadastro.First;

  while not cdsCadastro.Eof do
    begin
      if cdsCadastrobdEstado.AsInteger = 0 then
        wEstado:= 'Acre'
      else if cdsCadastrobdEstado.AsInteger = 1 then
        wEstado:= 'Alagoas'
      else if cdsCadastrobdEstado.AsInteger = 2 then
        wEstado:= 'Amapá'
      else if cdsCadastrobdEstado.AsInteger = 3 then
        wEstado:= 'Amazonas'
      else if cdsCadastrobdEstado.AsInteger = 4 then
        wEstado:= 'Bahia'
      else if cdsCadastrobdEstado.AsInteger = 5 then
        wEstado:= 'Ceará'
      else if cdsCadastrobdEstado.AsInteger = 6 then
        wEstado:= 'Distrito Federal'
      else if cdsCadastrobdEstado.AsInteger = 7 then
        wEstado:= 'Espirito Santo'
      else if cdsCadastrobdEstado.AsInteger = 8 then
        wEstado:= 'Goiás'
      else if cdsCadastrobdEstado.AsInteger = 9 then
        wEstado:= 'Maranhão'
      else if cdsCadastrobdEstado.AsInteger = 10 then
        wEstado:= 'Mato Grosso'
      else if cdsCadastrobdEstado.AsInteger = 11 then
        wEstado:= 'Mato Grosso do Sul'
      else if cdsCadastrobdEstado.AsInteger = 12 then
        wEstado:= 'Minas Gerais'
      else if cdsCadastrobdEstado.AsInteger = 13 then
        wEstado:= 'Pará'
      else if cdsCadastrobdEstado.AsInteger = 14 then
        wEstado:= 'Paraíba'
      else if cdsCadastrobdEstado.AsInteger = 15 then
        wEstado:= 'Paraná'
      else if cdsCadastrobdEstado.AsInteger = 16 then
        wEstado:= 'Pernambuco'
      else if cdsCadastrobdEstado.AsInteger = 17 then
        wEstado:= 'Piauí'
      else if cdsCadastrobdEstado.AsInteger = 18 then
        wEstado:= 'Rio de Janeiro'
      else if cdsCadastrobdEstado.AsInteger = 19 then
        wEstado:= 'Rio Grande do Norte'
      else if cdsCadastrobdEstado.AsInteger = 20 then
        wEstado:= 'Rio Grande do Sul'
      else if cdsCadastrobdEstado.AsInteger = 21 then
        wEstado:= 'Rondônia'
      else if cdsCadastrobdEstado.AsInteger = 22 then
        wEstado:= 'Roraima'
      else if cdsCadastrobdEstado.AsInteger = 23 then
        wEstado:= 'Santa Catarina'
      else if cdsCadastrobdEstado.AsInteger = 24 then
        wEstado:= 'São Paulo'
      else if cdsCadastrobdEstado.AsInteger = 25 then
        wEstado:= 'Sergipe'
      else if cdsCadastrobdEstado.AsInteger = 26 then
        wEstado:= 'Tocantins';


    wTexto:= wTexto + #13 + 'Nome: ' + cdsCadastrobdNome.AsString + ' CPF: ' + cdsCadastrobdCPF.AsString +  ' Data de Nascimento: ' + cdsCadastrobdData.AsString
             + ' Telefone: ' + cdsCadastrobdTelefone.AsString + ' Estado: ' + wEstado + ' Endereço: ' + cdsCadastrobdEndereco.AsString;

    cdsCadastro.Next;

    end;
  showMessage (wTexto) 
end;

procedure TForm1.edCPFKeyPress(Sender: TObject; var Key: Char);   //Máscara de CPF no Evento OnKeyPress do edCPF
begin
   if Key = #8 then
      exit;

   if Length(edCPF.Text) = 3 then       //Adiciona um . depois de 3 caracteres
      begin
         edCPF.Text := edCPF.Text + '.';
         edCPF.Selstart := Length(edCPF.text);
      end;

   if Length(edCPF.Text) = 7 then      //Adiciona outro . depois de 7 caracteres
      begin
         edCPF.Text := edCPF.Text + '.';
         edCPF.Selstart := Length(edCPF.text);
      end;

   if Length(edCPF.Text) = 11 then     //Adiciona um - depois de 11 caracteres 
      begin
         edCPF.Text := edCPF.Text + '-';
         edCPF.Selstart := Length(edCPF.text);
      end;

end;

procedure TForm1.edDataKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #8 then
     exit;
  if Length (edData.Text) = 2 then
     begin
        edData.Text := edData.Text + '/';
        edData.SelStart := Length (edData.Text);
     end;
  if Length (edData.Text) = 5 then
     begin
        edData.Text := edData.Text + '/';
        edData.SelStart := Length (edData.Text);
     end;

end;

end.
