unit uClasses;

interface
type
  TPessoas = class
  public
    wCodigo : String;
    wNome : String;
  end;

type
  TCliente = class(TPessoas)
  public
    wCodigoCliente : String;
    wNomeCliente : String;
    wEnderecoCliente : String;
    end;
type
  TEmpresa = class(TPessoas)
  public
    wEmpresaCodigo : String;
    wEmpresaNome : String;
    wEmpresaCnpj : String;
  end;
implementation

end.
 