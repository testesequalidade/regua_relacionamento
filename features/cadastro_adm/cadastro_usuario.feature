#language: pt

Funcionalidade: Cadastro de usuario
	Sendo um administrador
	Posso realizar o cadastro de um novo usuario no sistema
	Para que o usuario possa acessar o menu da regua de relacionamento

Contexto: Cadastro
    Dado que eu acessei a página de cadastro

@cadastro_sucesso @login #Fazer um codigo before no arquivo hooks.rb de login
    Cenário: Cadastro com sucesso
    
    E possuo os seguintes dados:

    |nome             | Flavio machado              |
    |cpf              | 098.796.986-22              |
    |e-mail           | testesequalidade@csu.com.br |
    |confirmar e-mail | testesequalidade@csu.com.br |
    |programa         | B2C OPTE+                   |
    |perfil           | <confirmarnome>             | 
    #Aguardando o nome correto do perfil
    Quando faço meu cadastro
    Entao fui cadastrado com sucesso

@validacao_cadastro
    Esquema do Cenario: Validação Cadastro

    E possuo os seguintes dados
        | nome             | <nome>       |
        | cpf              | <cpf>        |
        | email            | <email>      |
        | confirmar e-mail | <conf_email> |
        | programa         | <programa>   |
        | perfil           | <perfil>     | 

    Quando faco meu cadastro
    Então devo ver a mensagem de erro "<alerta>"

    Exemplos:

    | nome           | cpf            | email                       | conf_email                  | programa    | perfil        | alerta                                                      |
    |                | 098.796.986-22 | flavio.machado@csu.com.br   | flavio.machado@csu.com.br   | B2C OPTE+   | confirmarnome | Favor informar o Nome.                                      |
    | Flavio machado |                | flavio.machado@csu.com.br   | flavio.machado@csu.com.br   | B2C OPTE+   | confirmarnome | Favor informar o CPF.                                       |
    | Flavio machado | 098.796.986-22 |                             | flavio.machado@csu.com.br   | B2C OPTE+   | confirmarnome | Favor informar o E-mail.                                    |
    | Flavio machado | 098.796.986-22 | flavio.machado@csu.com.br   |                             | B2C OPTE+   | confirmarnome | Favor informar a confirmação do E-mail.                     |
    | Flavio machado | 098.796.986-22 | flavio.machado@csu.com.br   | flavio.machado@csu.com.br   | Selecione   | confirmarnome | Favor selecionar o Programa.                                |
    | Flavio machado | 098.796.986-22 | flavio.machado@csu.com.br   | flavio.machado@csu.com.br   | B2C OPTE+   | Selecione     | Favor selecionar o Perfil.                                  |
    | Flavio machado | 098.796.986-22 | testesequalidade@csu.com.br | testesequalidade@csu.com.br | B2C OPTE+   | Selecione     | O E-mail informado já se encontra cadastrado em nossa base. |

