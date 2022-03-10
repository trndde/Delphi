unit UClasses;

interface

type
  TCadastro = class

  public
  wCodigo: Integer;
  end;

type
  TCadastroProduto = class(TCadastro)

  public
  wTipo: String;
  wMarca: String;
  wModelo: String;
  wCor: String;
  end;

type
  TCadastroFornecedor = class(TCadastro)

  public
  wNome: String;
  wCNPJ: String;
  wTelefone: String;
  wEndereco: String;
  end;

implementation

end.
