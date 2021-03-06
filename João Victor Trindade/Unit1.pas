unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cb1: TCheckBox;
    cb2: TCheckBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    cb3: TCheckBox;
    cb4: TCheckBox;
    cb5: TCheckBox;
    Edit4: TEdit;
    Label3: TLabel;
    bSalvar: TButton;
    bRelatorio: TButton;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure bRelatorioClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);


  private
    { Private declarations }
    vNome: String;
    vTelefone: String;
    vMarca: String;
    vIndice: Integer;
    vModelo: String;
    vImei: String;
    vPrioridade: String;
    vData: String;
    vRequerimento: String;
    vDescricao: String;
    wStringList: TStringList;


    function fDiretorio: String;
    function fRelatorio: String;
    procedure pSalvar;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//SCRIPT

function TForm1.fRelatorio;
begin
vNome := Edit1.text;
vTelefone:= MaskEdit1.Text;
vData := MaskEdit2.Text;
vModelo := Edit2.Text;
vImei := Edit3.Text;
vDescricao:= Edit4.Text;


vIndice:= ComboBox1.ItemIndex;
  if vIndice = 0 then
    vMarca := 'Apple';
  if vIndice = 1 then
    vMarca:= 'Asus';
  if vIndice = 2 then
    vMarca:= 'Lenovo';
  if vIndice = 3 then
    vMarca:= 'LG';
  if vIndice = 4 then
    vMarca:= 'Microsoft';
  if vIndice = 5 then
    vMarca:= 'Motorola';
  if vIndice = 6 then
    vMarca:= 'Multilaser';
  if vIndice = 7 then
    vMarca:= 'Nokia';
  if vIndice = 8 then
    vMarca:= 'Samsung';
  if vIndice = 9 then
    vMarca:= 'Sony';
  if vIndice = 10 then
    vMarca:= 'Xiaomi';
  if vIndice = 11 then
    vMarca:= 'Outros';


  if cb3.Checked then
    vPrioridade:= 'Baixa'
  else if cb4.Checked then
    vPrioridade:= 'M?dia'
  else if cb5.Checked then
    vPrioridade:= 'Alta';


  if cb1.Checked then
     vRequerimento:= 'Pedido'
  else if cb2.Checked then
     vRequerimento:= 'Or?amento';

Result:= ('Nota de ' + vRequerimento + #13 + 'Nome do cliente: ' + vNome + #13 + 'Telefone: ' + vTelefone + #13 + 'Marca: ' + vMarca + #13 + 'Modelo: ' + vModelo + #13 + 'IMEI: ' + vImei + #13 + 'Prioridade: ' + vPrioridade + #13 + 'Descri??o do defeito: ' + vDescricao + #13 + 'Data: ' + vData)
end;


procedure TForm1.pSalvar;
begin
vNome := Edit1.text;
vTelefone:= MaskEdit1.Text;
vData := MaskEdit2.Text;
vModelo := Edit2.Text;
vImei := Edit3.Text;
vDescricao:= Edit4.Text;


vIndice:= ComboBox1.ItemIndex;
  if vIndice = 0 then
    vMarca := 'Apple';
  if vIndice = 1 then
    vMarca:= 'Asus';
  if vIndice = 2 then
    vMarca:= 'Lenovo';
  if vIndice = 3 then
    vMarca:= 'LG';
  if vIndice = 4 then
    vMarca:= 'Microsoft';
  if vIndice = 5 then
    vMarca:= 'Motorola';
  if vIndice = 6 then
    vMarca:= 'Multilaser';
  if vIndice = 7 then
    vMarca:= 'Nokia';
  if vIndice = 8 then
    vMarca:= 'Samsung';
  if vIndice = 9 then
    vMarca:= 'Sony';
  if vIndice = 10 then
    vMarca:= 'Xiaomi';
  if vIndice = 11 then
    vMarca:= 'Outros';


  if cb3.Checked then
    vPrioridade:= 'Baixa'
  else if cb4.Checked then
    vPrioridade:= 'M?dia'
  else if cb5.Checked then
    vPrioridade:= 'Alta';


  if cb1.Checked then
     vRequerimento:= 'Pedido'
  else if cb2.Checked then
     vRequerimento:= 'Or?amento';

wStringList.Add('Nota de ' + vRequerimento + #13 + 'Nome do cliente: ' + vNome + #13 + 'Telefone: ' + vTelefone + #13 + 'Marca: ' + vMarca + #13 + 'Modelo: ' + vModelo + #13 + 'IMEI: ' + vImei + #13 + 'Prioridade: ' + vPrioridade + #13 + 'Descri??o do defeito:' + vDescricao + #13 + 'Data: ' + vData +#13+#13)
end;


procedure TForm1.bRelatorioClick(Sender: TObject);
begin
ShowMessage(fRelatorio);
end;




function Tform1.fDiretorio: String;
begin
  Result:= 'c:\BackupOr?amentos\Or?amentos.txt'
end;



procedure TForm1.bSalvarClick(Sender: TObject);
  var
    vContador: integer;
    vTexto: String;
begin
pSalvar;
  for vContador := 0 to wStringList.Count-1 do
    vTexto := wStringList[vContador];


    if not DirectoryExists('c:\BackupOr?amentos') then
      ForceDirectories('c:\BackupOr?amentos');

    wStringList.SaveToFile(fDiretorio);

end;



procedure TForm1.FormCreate(Sender: TObject);
begin
wStringList:= TStringList.Create;
 if FileExists('c:\BackupOr?amentos\Or?amentos.txt') then
   wStringList.LoadFromFile('c:\BackupOr?amentos\Or?amentos.txt');
end;

procedure TForm1.Edit1Enter(Sender: TObject);
begin
edit1.text:= '' 
end;

procedure TForm1.Edit4Enter(Sender: TObject);
begin
Edit4.text:=''
end;

end.


//Me contrata a?, p? :) 



