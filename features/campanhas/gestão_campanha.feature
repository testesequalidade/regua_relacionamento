#language: pt

Funcionalidade: Gestão de campanha

    Para que eu possa gerir minhas campanhas
    Sendo um usuário com permissão
    Posso acessar a pagina de gestão de campanhas

Contexto: Ações na pagina de gestão de campanha
    Dado que estou na pagina de gestão de campanha

@visualizar_campanha
Cenario: Visualizar as campanhas
    Dado que estou logado no ADM
    Quando acesso a pagina de gestão de campanhas
    Então visualizo todas as campanhas cadastradas

@limpar_selecao
Cenario: Limpar seleção
    Quando limpo a seleção
    Então todas as campanhas deverão ficar desmarcadas

@desativar_campanhas
Cenario: Desativar campanha
    E seleciono uma campanha
    Quando a desativo 
    Então a campanha deverá estar desativada

@ativar_campanha
Cenario: Ativar campanha
    E seleciono uma campanha
    Quando a ativo
    Então a campanha deverá estar ativada

@excluir_campanha
Cenario: Excluir
    E seleciono uma campanha
    Quando seleciono e confirmo a exclusão
    Então a campanha deverá ser exluida

@pesquisa_ativas
Cenario: Pesquisa Ativa
    Quando pesquiso por campanhas ativas
    Então visualizo somente campanhas ativas cadastradas

@pesquisa_desativas
Cenario: Pesquisa Desativa
    Quando pesquiso por campanhas desativas
    Então visualizo somente campanhas desativas cadastradas

@pesquisa_nome
Cenario: Pesquisa por nome
    Quando pesquiso campanhas pelo nome
    Então visualizo as campanhas pequisadas

@ativa_data
Cenario: Campanha ativa pela data de vigencia
    E a campanha estiver inativa
    Quando a data de inicio da campanha for igual a data atual
    Então a campanha deverá ficar ativa

@inativa_data
Cenario: Campanha ativa pela data de vigencia
    E a campanha estiver ativa
    Quando a data de fim da campanha for igual a data atual
    Então a campanha deverá ficar inativa



