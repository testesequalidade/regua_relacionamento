#language: pt

Funcionalidade: Cadastro de usuario
	Sendo um administrador
	Posso realizar o cadastro de um novo usuario no sistema
	Para que o usuario possa acessar o menu da regua de relacionamento 
    #o Para que está errado

Contexto: Cadastro
    Dado que eu acessei a página de cadastro

@cadastro_sucesso @auth
    Cenário: Cadastro com sucesso
    
    E possuo os seguintes dados: 

    |nome             | aFlavio machado                              |
    |cpf              | 098.796.986-22                               |
    |email            | flavio.machado@csu.com.br                    |
    |confirmar_email  | flavio.machado@csu.com.br                    |
    |programa         | PROGRAMA DE RECOMPENSAS EMPRESARIAL TRIBANCO |
    |perfil           | ADMINISTRADOR                                | 
    #Aguardando o nome correto do perfil
    Quando faco meu cadastro
    Entao devo ver a mensagem 
"""
O usuário foi cadastrado com sucesso e sua senha foi enviada para o e-mail cadastrado!
"""
@validacao_cadastro @auth
    Esquema do Cenario: Validação Cadastro

    E possuo os seguintes dados:
        | nome             | <nome>       |
        | cpf              | <cpf>        |
        | email            | <email>      |
        | confirmar_email  | <conf_email> |
        | programa         | <programa>   |
        | perfil           | <perfil>     | 

    Quando faco meu cadastro
    Então devo ver a mensagem de erro "<alerta>"

    Exemplos:

    | nome           | cpf            | email                       | conf_email                  | programa                                       | perfil        | alerta                                                      |
    |                | 098.796.986-22 | flavio.machado@csu.com.br   | flavio.machado@csu.com.br   | PROGRAMA DE RECOMPENSAS EMPRESARIAL TRIBANCO   | ADMINISTRADOR | Favor informar o Nome.                                      |
    | Flavio machado |                | flavio.machado@csu.com.br   | flavio.machado@csu.com.br   | PROGRAMA DE RECOMPENSAS EMPRESARIAL TRIBANCO   | ADMINISTRADOR | Favor informar o CPF.                                       |
    | Flavio machado | 098.796.986-22 |                             | flavio.machado@csu.com.br   | PROGRAMA DE RECOMPENSAS EMPRESARIAL TRIBANCO   | ADMINISTRADOR | Favor informar o E-mail.                                    |
    | Flavio machado | 098.796.986-22 | flavio.machado@csu.com.br   |                             | PROGRAMA DE RECOMPENSAS EMPRESARIAL TRIBANCO   | ADMINISTRADOR | Favor informar a confirmação do E-mail.                     |
    | Flavio machado | 098.796.986-22 | flavio.machado@csu.com.br   | flavio.machado@csu.com.br   | Selecione                                      | ADMINISTRADOR | Favor selecionar o Programa.                                |
    | Flavio machado | 098.796.986-22 | flavio.machado@csu.com.br   | flavio.machado@csu.com.br   | PROGRAMA DE RECOMPENSAS EMPRESARIAL TRIBANCO   | Selecione     | Favor selecionar o Perfil.                                  |
    | Flavio machado | 098.796.986-22 | testesequalidade@csu.com.br | testesequalidade@csu.com.br | PROGRAMA DE RECOMPENSAS EMPRESARIAL TRIBANCO   | Selecione     | O E-mail informado já se encontra cadastrado em nossa base. |

