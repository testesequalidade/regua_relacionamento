
#language: pt 
Funcionalidade: Vincular template 
    Para para que eu possa vincular um template
    Sendo um usuario com acesso 
    Posso acessar a pagina de vinculo de template


Contexto: Vinculo de template

 Dado que estou na pagina de vinculo de template 

Cenário: Vincular template à regra 
    E seleciono os seguintes dados:
        |ambiente_loyalty | Sim                       |
        |ambiente_vision  | Nao                       |
        |regra            | Tipo campanha Vision n° 6 |
    Quando realizo os vinculos dos templates
    Então estes templates deverão ser vinculados à regra selecionada
    E na tela de cadastro da campanha não deverá ser exibido os templates desvinculados

Cenário: Desvincular template à regra
E seleciono os seguintes dados:
        |ambiente_loyalty | Sim                       |
        |ambiente_vision  | Nao                       |
        |regra            | Tipo campanha Vision n° 6 |
    Quando desvinculo os templates da regra selecionada
    Então deverá ser desvinculados o(s) template(s) selecionados
    E na tela de cadastro da campanha não deverá ser exibido os templates desvinculados 

Cenário: Validação regra 
    E seleciono os seguintes dados:
        |ambiente_loyalty | Sim                       |
        |ambiente_vision  | Nao                       |
        |regra            | Tipo campanha Vision n° 6 |
    Quando excluo todos os templates vinculados em uma regra 
    Então deverá ser possivel salvar
    E na tela de cadastro da campanha não deverá aparecer nenhum template para essa regra




