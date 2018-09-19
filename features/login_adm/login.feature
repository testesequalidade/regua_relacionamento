#language: pt

Funcionalidade: Login
    Sendo um administrador
    Posso realizar login no ADM 
    Para que eu possa gerenciar as campanhas

Contexto: Acesso login
    Dado que acessei a pagina de login

@login
Cenário: Login com sucesso
  
    Quando faço login com "<e-mail>", "<senha>" e seleciono a organização "<organização>"
    Então sou autenticado com sucesso

@usuario_invalido
Esquema do Cenário: Login sem sucesso
    
    Quando faço login com "<e-mail>", "<senha>" e seleciono a organização "<organização>"
    Então devo ver a mensagem "<alerta>"

    Exemplos:
      | e-mail                      | senha  | organização  | alerta                          |
      |                             | 123456 | Porto Seguro | Favor informar o login.         |
      | testesequalidade@csu.com.br |        | Porto Seguro | Favor informar a senha.         |
      | testesequalidade@csu.com.br | 123456 | Selecione    | Favor selecionar a Organização. |
      | Flavio.machado@hotmail.com  | 123456 | Porto Seguro | Usuário inexistente ou inativo. |
      | testesequalidade@csu.com.br | 123456 | Porto Seguro | Usuário inexistente ou inativo. |
      |                             |        |              | Favor informar o login.         |
      |                             |        |              | Favor informar a senha.         |
      |                             |        |              | Favor selecionar a Organização. |