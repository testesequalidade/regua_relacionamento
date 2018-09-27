#language: pt

Funcionalidade: Consulta de usuarios
    
    Sendo um usuario com permissao
    Posso acessar a pagina de registros de usuarios 
    Para visualizar os usuarios vinculados a campanha

Contexto: Pesquisa, filtro e ordenação
    Dado que acessei a pagina de consulta de usuarios

@painel_visualização
Cenario: Visualizar campanha especifica
    Quando acesso o painel de visualização
    Então visualizo os usuarios que estão vinculados nas campanhas

@visualizar_campanha_especifica
Cenario: Visualizar campanha especifica
    Quando seleciono uma campanha
    Então visualizo os usuarios que estão vinculados a esta campanha

@pesquisa_usuario
Cenario: Pesquisa nome usuario
    Quando realizo a pesquisa pelo usuario '<nome_usuario>'
    Então devo visualizar as informações do '<nome_usuario>' na listagem

@ordenação_usuarios
Cenario: Ordenação ordem alfabetica
    Quando realizo a ordenação por ordem alfabetica
    Então visualizo os usuarios de forma ordenada

@filtro_usuarios
Cenario: Pesquisa por filtros
    Quando seleciono os filtros de pesquisa
    Então visualizo os usuarios de acordo com o preenchimento dos filtros
