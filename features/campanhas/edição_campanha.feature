#language: pt

Funcionalidade: Editar campanha
    Para que eu possa editar minhas campanhas
    Sendo um usuário com permissão
    Posso acessar a pagina de edição de campanhas

Contexto: Edição de campanha
    Dado que estou na pagina de gestão de campanha

@editar_campanha
Cenario: Validar edição de campanha
    E selecionei uma campanha inativa e não iniciada
    Quando realizo a edição dos campos: '<nome>', '<descrição>', '<tipo_sistema>', '<regra>', '<de>', '<ate>', '<check_tipo>'
    Então sou direcionado para a tela de listagem de campanha

@editar_campanha_ativa
Cenario: Editar campanha ativa
    E desejo editar uma campanha ativa
    Então não visualizo a opção de edição

@editar_campanha_inativa_e_ja_iniciada
Cenario: Editar campanha inativa e já iniciada
    E desejo editar uma campanha inativa e ja iniciada
    Então não visualizo a opção de edição

@ativar_campanha_expirada
Cenario: Ativar campanha expirada
    #Campanha expirada é quando a data de ativação é menor que a data atual.  
    #Ex: Campanha 'xpto' a data de ativação é dia 10/05/2018 e a data atual é 25/09/2018 então essa campanha está expirada
    Quando edito a data de uma campanha expirada 
    Então posso ativa-la

Contexto:
    Dado que estou na pagina de edição de campanhas

@validar_obrigatoriedade_nome_edicao
Cenário: Validar obrigatoriedade do campo nome
    Quando deleto a informação do nome da campanha
    E salvo a edição
    Então devo ver a mensagem de erro "É necessário informar o nome."

@validar_obrigatoriedade_descrição_edicao
Cenário: Validar obrigatoriedade do campo descrição
    Quando deleto a informação da descricao da campanha
    E salvo a edição
    Então devo ver a mensagem de erro "É necessário informar uma descrição."
    
@validar_obrigatoriedade_inicio_edicao
Cenário: Validar obrigatoriedade do campo data inicio
    Quando deleto a data de inicio da campanha
    E salvo a edição
    Então devo ver a mensagem de erro "É ncessário informar uma data de inicio."

@validar_obrigatoriedade_fim_edicao
Cenário: Validar obrigatoriedade do data fim
    Quando deleto a data de fim da campanha
    E salvo a edição
    Então devo ver a mensagem de erro "É ncessário informar uma data de fim."

@Validar_obrigatoriedade_data_inicio_<_fim 
Cenário: Validar obrigatoriedade da data inicio menor que data fim  
    Quando altero a data de inicio da campanha maior que a data fim
    E salvo a edição
    Então devo ver a mensagem de erro "A data inicio deve ser menor que a data fim."



