unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Estrangeiro: TCheckBox;
    sexo: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    nome: String;
    idade: Integer;
    rsexo: String;
    rEstrangeiro: String;
    wStringList: TStringList;

    function fMensagem: String;
    procedure pMensagem;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



{ TForm1 }

function TForm1.fMensagem: String;
begin
  nome := Edit1.text;
  idade := StrToInt(Edit2.text);
  if sexo.ItemIndex = 0 then
  rsexo := 'Masculino'
  else
  rsexo := 'Feminino';

  if Estrangeiro.Checked then
  rEstrangeiro := 'Sim'
  else
  rEstrangeiro := 'N�o';

  Result := ('Nome:' + nome + ' Idade:' + IntToStr(idade) + ' Sexo:' + rsexo + ' Estrangeiro' + rEstrangeiro)
end;

procedure TForm1.pMensagem;
begin
  nome := Edit1.text;
  idade := StrToInt(Edit2.text);
  if sexo.ItemIndex = 0 then
  rsexo := 'Masculino'
  else
  rsexo := 'Feminino';

  if Estrangeiro.Checked then
  rEstrangeiro := 'Sim'
  else
  rEstrangeiro := 'N�o';

  wStringList.Add ('Nome:' + nome + ' Idade:' + IntToStr(idade) + ' Sexo:' + rsexo + ' Estrangeiro' + rEstrangeiro)
  //ShowMessage ('Nome:' + nome + ' Idade:' + IntToStr(idade) + ' Sexo:' + rsexo + ' Estrangeiro' + rEstrangeiro)
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
pMensagem;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 ShowMessage(fMensagem);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
contador: integer;
Texto: String;
begin
  for contador := 0 to wStringList.Count-1 do
  //showmessage(wStringList[contador]);
  Texto := Texto + #13 + wStringList[contador]; // #13 � para pular linha
  
  ShowMessage(Texto)
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   wStringList := TstringList.Create;
end;

end.
