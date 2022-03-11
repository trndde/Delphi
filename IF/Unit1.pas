unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Ed1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
      name: String;
      sexo: Integer;

     procedure nome;
     function mnome: String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.nome;
var
SimNao: Boolean;
sexo: Integer;
begin
ShowMessage(Ed1.text);
sexo := ComboBox1.ItemIndex;
     if sexo = 0 then
     ShowMessage('Sexo: Masculino')
     else
     ShowMessage('Sexo: Feminino');

     SimNao := CheckBox1.Checked;
     if SimNao then
     ShowMessage('Estrangeiro: Sim')
     else
     ShowMessage('Estrangeiro: Não')
end;

procedure TForm1.Button1Click(Sender: TObject);
 begin
nome;
end;

function TForm1.mnome: String;
var
SimNao: Boolean;
begin
Ed1.text := name;
sexo := ComboBox1.ItemIndex;
     if sexo = 0 then
     ShowMessage('Sexo: Masculino') // posso criar uma variável também e
                                    //colocar o showmessage no final com tudo
     else
     ShowMessage('Sexo: Feminino');

     if SimNao.Checked then
     ShowMessage('Estrangeiro: Sim')
     else
     ShowMessage('Estrangeiro: Não')
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage (Ed1.Text);
  ShowMessage (mnome);
end;

end.
