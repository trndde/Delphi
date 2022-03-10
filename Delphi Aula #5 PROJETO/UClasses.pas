unit UClasses;

interface                          //Classe m�e, cont�m campos em comum com a classe filha
type
  TCadastro = class
  public
   wCodigoCliente: String;
   wNomeCliente : String;
   wTelefone: String;
   wEndereco: String;
   wCEP: String;
  end;

type
  TCadastroCPF = class(TCadastro)  //Classe filha, mesmos campos da classe m�e mas com campos exclusivos dela 
  public
   wCPF : String;
   wData: String;
  end;

type
  TCadastroCNPJ = class(TCadastro)
  public
   wCNPJ: String;
   wRazaoSocial: String;
  end;


implementation

end.
