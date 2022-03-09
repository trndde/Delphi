unit Ucadastro;

interface
type
   TCadastro = class

   protected
     edCodigo: Integer;
     edNome: String;
     edIdade: Integer;
     edEndereco: String;
   private
    function GetCodigo: Integer;
    function GetEndereco: String;
    function GetIdade: Integer;
    function GetNome: String;
    procedure SetCodigo(const Value: Integer);
    procedure SetEndereco(const Value: String);
    procedure SetIdade(const Value: Integer);
    procedure SetNome(const Value: String);

   public
     property codigo: Integer read GetCodigo write SetCodigo;
     property nome: String read GetNome write SetNome;
     property idade: Integer read GetIdade write SetIdade;
     property endereco: String read GetEndereco write SetEndereco;

end;

implementation

{ Tcliente }

function TCadastro.GetCodigo: Integer;
begin
  Result:= Self.edCodigo;
end;

function TCadastro.GetEndereco: String;
begin
  Result:= Self.edEndereco;
end;

function TCadastro.GetIdade: Integer;
begin
   Result:= Self.edIdade;
end;

function TCadastro.GetNome: String;
begin
   Result:= Self.edNome;
end;

procedure TCadastro.SetCodigo(const Value: Integer);
begin
   Self.edCodigo:= Value;
end;

procedure TCadastro.SetEndereco(const Value: String);
begin
  Self.edEndereco:= Value;
end;

procedure TCadastro.SetIdade(const Value: Integer);
begin
  Self.edIdade:= Value;
end;

procedure TCadastro.SetNome(const Value: String);
begin
  Self.edNome:= Value;
end;

end.
 