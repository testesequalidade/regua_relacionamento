#language: pt

Funcionalidade: Recuperação de Senha
    Sendo um usuário que esqueceu a senha de acesso
    Posso solicitar a recuperação da senha
    Para que eu possa acessar o conteudo da regua de relacionamento


@recuperar_senha
Cenario: Recuperar senha

    Dado que acessei a pagina de recuperacao de senha
    Quando solicito a recuperacao para o "<cpf>", "<email_CS>" e "<organização>"
    Entao o site exibe a mensagem de confirmacao de envio de senha "Uma nova senha foi encaminhada para o e-mail cadastrado."
