unit uRelatorioVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DBTables, uTelaVenda, uConsultaCompra,
  frxClass, frxDBSet, frxDesgn, Grids, DBGrids, DB, frxChart;

type
  TfrRelatorio = class(TForm)
    edDataInicio: TMaskEdit;
    edDataFinal: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    rgOrdem: TRadioGroup;
    gbTamanho: TGroupBox;
    ckPP: TCheckBox;
    ckP: TCheckBox;
    ckM: TCheckBox;
    ckG: TCheckBox;
    ckGG: TCheckBox;
    ckXG: TCheckBox;
    ckXGG: TCheckBox;
    btFiltrar: TButton;
    btRelatorio: TButton;
    btEditar: TButton;
    frxReport1: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    frxDesigner1: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    grVisualizar: TDBGrid;
    dsQuery: TDataSource;
    rgOpcao: TRadioGroup;
    frxChartObject1: TfrxChartObject;
    dsGrafico: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btRelatorioClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: String;
      var Value: Variant);
    function frxReport1UserFunction(const MethodName: String;
      var Params: Variant): Variant;
  private
    { Private declarations }
    FQuery: TQuery;
    FQueryGrafico: TQuery;
    procedure Filtro;
    procedure getLoadParameters;
    function getWhere (SQL: String; prOr: Boolean = False): String;
    function getOr (prSQL: String): String;
  public
    { Public declarations }
  end;

var
  frRelatorio: TfrRelatorio;

implementation

{$R *.dfm}

// Criando e instanciando a Query
procedure TfrRelatorio.FormCreate(Sender: TObject);
begin
  FQuery:= TQuery.Create(Self);

  FQueryGrafico:= TQuery.Create(Self);
end;


// destrói o componente pra fechar a tabela e não dar erro
procedure TfrRelatorio.FormDestroy(Sender: TObject);
begin
  if Assigned(fquery) then  //Assigned verifica se a variavel foi criada e instanciada
     FreeAndNil(FQuery);    //FreeAndNil destroi e deixa ela em modo Nil (desinstanciada)

  if Assigned(FQueryGrafico) then
     FreeAndNil(FQueryGrafico);
end;


// Function pra colocar OR
function TfrRelatorio.getOr(prSQL: String): String;
begin
 Result:= '';
 if (prSQL <> '') then 
   Result:= ' OR ';
end;


// Function pra colocar WHERE, AND ou OR no texto do SQL
function TfrRelatorio.getWhere(SQL: String; prOr: Boolean): String;
begin
  if Pos('WHERE', UpperCase(SQL)) > 0 then
    begin
      if prOr then
        Result:= ' OR '
      else
        Result:= ' AND ';
    end
  else
     Result:= ' WHERE ';
end;


// Função de filtrar por SQL, criar o comando SQL \\
procedure TfrRelatorio.Filtro;
var
  wSQL: string;
  wTamanho: String;
  wWhere: String;
  wOrder: String;
begin
// INICIAR AS VARIAVEIS, incluindo o wSQL \\
  wSQL:= ''; 
  wTamanho:= '';
  wWhere:= '';
  wOrder:= '';

// FILTRO POR TAMANHOS \\
  if ckPP.checked then
     wTamanho:= wTamanho + getOr(wTamanho) + ' BDTAMANHO = ' + quotedstr('PP');
  if ckP.checked then
     wTamanho:= wTamanho + getOr(wTamanho) + ' BDTAMANHO = ' + quotedstr('P');
  if ckM.checked then
     wTamanho:= wTamanho + getOr(wTamanho) + ' BDTAMANHO = ' + quotedstr('M');
  if ckG.checked then
     wTamanho:= wTamanho + getOr(wTamanho) + ' BDTAMANHO = ' + quotedstr('G');
  if ckGG.checked then
     wTamanho:= wTamanho + getOr(wTamanho) + ' BDTAMANHO = ' + quotedstr('GG');
  if ckXG.checked then
     wTamanho:= wTamanho + getOr(wTamanho) + ' BDTAMANHO = ' + quotedstr('XG');
  if ckXGG.checked then
     wTamanho:= wTamanho + getOr(wTamanho) + ' BDTAMANHO = ' + quotedstr('XGG');

// Caso a variavel tamanho esteja diferente de vazio, adiciona o tamanho ao select do SQL \\
  if wTamanho <> '' then
     wWhere := wWhere + getWhere(wWhere) + '(' + wTamanho + ')';


// FILTRO DE DATA, convertendo a String do Edit pro formato que tem na tabela (YYYYMMDD) \\
  if edDataInicio.Text <> '  /  /    ' then
     wWhere:= wWhere + getWhere(wWhere) + ' BDDATA >= ' + QuotedStr(Copy(edDataInicio.Text, 7, 4) + Copy(edDataInicio.Text, 4, 2) + Copy(edDataInicio.text, 1, 2));
  if edDataFinal.Text <> '  /  /    ' then
     wWhere:= wWhere + getWhere(wWhere) + ' BDDATA <= ' + QuotedStr(Copy(edDataFinal.Text, 7, 4) + Copy(edDataFinal.Text, 4, 2) + Copy(edDataFinal.text, 1, 2));


// ORDENAR A CONSULTA a partir dos campos definidos no RadioGroup, compativeis com os campos existentes na tabela \\
  case rgOrdem.ItemIndex of
    0: wOrder:= ' ORDER BY BDCODIGOPRODUTO';
    1: wOrder:= ' ORDER BY BDDATA';
    2: wOrder:= ' ORDER BY BDVALORUNITARIO';
    3: wOrder:= ' ORDER BY BDVALORTOTAL';
    4: wOrder:= ' ORDER BY BDQUANTIDADE';
    5: wOrder:= ' ORDER BY BDTAMANHO';
  end;

  wSQL:= 'SELECT * FROM tRegistroVendas ' + wWhere + wOrder;

//Pasta na qual a FQuery vai buscar a tabela
  FQuery.DatabaseName:= 'C:\Users\prog11\Desktop\Delphi Aulas\Delphi Aula #10 07-04\Tabelas';
// ADICIONANDO A QUERY AO DATASOURCE PRA APARECER NA TABELA \\
  dsQuery.DataSet:= FQuery;
// COMANDOS PRA FQUERY \\
  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(wSQL);
  FQuery.Open;

// Montando SQL pro gráfico \\
  wSQL:= 'SELECT BDDATA, COUNT(BDDATA) AS TOTAL FROM tRegistroVendas ';
  wSQL:= wSQL + wWhere;
  wSQL:= wSQL + ' GROUP BY BDDATA';

  FQueryGrafico.DatabaseName:= 'C:\Users\prog11\Desktop\Delphi Aulas\Delphi Aula #10 07-04\Tabelas';
  dsGrafico.DataSet:= FQueryGrafico; //esse DataSet é o componente frxDBDataSet
                            
  FQueryGrafico.Close;
  FQueryGrafico.SQL.Clear;
  FQueryGrafico.SQL.Add(wSQL);
  FQueryGrafico.Open;



end;

// BOTÃO FILTRAR CHAMANDO PROCEDURE FILTRO \\
procedure TfrRelatorio.btFiltrarClick(Sender: TObject);
begin
  Filtro;
end;

// BOTÃO RELATÓRIO \\
procedure TfrRelatorio.btRelatorioClick(Sender: TObject);
begin
// CHAMA A PROCEDURE DE FILTRO \\
  Filtro;

// CARREGA O LAYOUT DE RELATORIO DO FASTREPORT \\
  frxReport1.LoadFromFile('C:\Users\prog11\Desktop\Delphi Aulas\Delphi Aula #10 07-04\RelatorioVendas.fr3');
// ADICIONANDO A QUERY AO FASTREPORT \\
  frxDBDataset1.DataSet:= FQuery;
// CHAMANDO A FUNÇÃO DE CARREGAR COMPONENTES PROS PARAMETROS DO FASTREPORT \\
  getLoadParameters;
// CRIAR FUNçÂO DENTRO DO FASTREPORT \\
  frxReport1.AddFunction('function getmodelo: integer;', 'SCI', 'Retorna modelo de relatório');
// ABRE TELA DO RELATORIO FASTREPORT \\
  frxReport1.ShowReport();

end;

// BOTÃO EDITAR, PRA ABRIR O DESIGN REPORT E EDITAR O LAYOUT DO RELATORIO \\
procedure TfrRelatorio.btEditarClick(Sender: TObject);
begin
// CHAMA A PROCEDURE DE FILTRO \\
  Filtro;
// CARREGA O LAYOUT DE RELATORIO DO FASTREPORT \\
  frxReport1.LoadFromFile('C:\Users\prog11\Desktop\Delphi Aulas\Delphi Aula #10 07-04\RelatorioVendas.fr3');
// ADICIONANDO A QUERY AO FASTREPORT \\
  frxDBDataset1.DataSet:= FQuery;
// CHAMANDO FUNÇÃO DE CARREGAR COMPONENTES PROS PARAMETROS DO FASTREPORT \\
  getLoadParameters;
// ADICIONAR FUNçÂO DENTRO DO FASTREPORT \\
  frxReport1.AddFunction('function getmodelo: integer;', 'SCI', 'Retorna modelo de relatório');
// ABRE TELA DE EDIÇÃO DO LAYOUT DO RELATORIO (DESIGN REPORT) \\
  frxReport1.DesignReport();
end;



// EVENTO ONGETVALUE DO frxUSERDATASET \\
procedure TfrRelatorio.frxUserDataSet1GetValue(const VarName: String;
  var Value: Variant);
var
  I: Integer;
  wCMP: TWinControl;
begin
  wCMP := nil;
  for I := 0 to Self.ComponentCount-1 do
    begin
      if Self.Components[I].Name = VarName then
        begin
          wCMP:= TWinControl(Self.Components[I]);
          Break;
        end;
    end;

  if Assigned (wCMP) then
    begin
      if (wCMP is TRadioGroup) then
         Value:= TRadioGroup(wCMP).ItemIndex;
    end;

// COLOCAR O VARNAME: MODELO NO CAMPO FIELDS DAS PROPRIEDADES DO frxUSERDATASET \\ *Foi substituido pela função GETMODELO dentro do FASTREPORT
  if VarName = 'Modelo' then
     Value:= rgOpcao.ItemIndex;
end;



// FUNÇÃO DE CARREGAR COMPONENTES PROS PARAMETROS DO FASTREPORT \\
procedure TfrRelatorio.getLoadParameters;
var
  I: Integer;
begin
  frxUserDataSet1.Fields.Clear;

  for I := 0 to Self.ComponentCount-1 do
  begin
    if (self.Components[I] is TRadioGroup) then
    frxUserDataSet1.Fields.Add(Self.Components[I].Name);
  end;
end;


// Function pra adicionar Função ao FastReport
function TfrRelatorio.frxReport1UserFunction(const MethodName: String;
  var Params: Variant): Variant;
begin
  if UpperCase(MethodName) = 'GETMODELO' then
     Result := rgOpcao.ItemIndex;
end;

end.
