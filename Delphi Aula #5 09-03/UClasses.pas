unit UClasses;

interface
type
  TMarca = class  //Classe criada
  public
   wNomeMarca : String;
  end;


type
  TCarro = class(TMarca)  //Classe criada e herdada da classe TMarca
  public
    wNomeModeloCarro : String;
    wCodigoCarro: String;
  end;

type
  TMoto = class(TMarca)
  public
    wNomeModeloMoto : String;
  end;


implementation

end.
