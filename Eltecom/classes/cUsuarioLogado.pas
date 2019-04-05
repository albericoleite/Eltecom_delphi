unit cUsuarioLogado;

interface

uses System.Classes ;

type
  TUsuarioLogado = class
  private
    F_codigo: Integer;
    F_usuario: string;
    F_senha: string;

  public
  published
    property codigo        :Integer    read F_codigo      write F_codigo;
    property nome          :string     read F_usuario           write F_usuario;
    property senha         :string     read F_senha          write F_senha;
  end;


implementation


end.

