unit UClasses;

interface

type
  TCadastro = class

  public
  wCodigo: Integer;
  wNome: String;
  wCPF: String;
  wRG: String;
  wSexo: Integer;
  wData: String;
  wTelefone: String;
  wEmail:String;
  wEndereco: String;
  wCEP: String;
  wCidade: String;
  wEstado: String;
  wPais: String;
  end;

type
  TCadastroPaciente = class(TCadastro)

  public
  wContatoAcompanhante: String;
  wPrioridade: Integer;
  end;

type
  TCadastroVisitante = class(TCadastro)

  public
  wParentesco: String;
  wPaciente: String;
  end;

type
  TCadastroMedico = class(TCadastro)

  public
  wCRM: String;
  wEspecialidade: String;
  end;



implementation

end.
