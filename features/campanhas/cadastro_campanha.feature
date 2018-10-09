#language: pt

Funcionalidade: Cadastro de campanha

    Para que eu possa cadastrar uma nova campanha
    Sendo um usuario com permissao
    Posso acessar a pagina de gerenciamento de campanha

    Contexto: Cadastro

    Dado que estou na pagina de criar campanhas

@cadastro_campanha_email
Cenario: Cadastro campanha e-mail
    E possuo os seguintes dados:
        | nome                | Dia dos pais       |
        | abrangencia_email   | Sim                |
        | abrangencia_sms     | Não                |
        | ambiente            | Loyalty            |
        | descricao           | campanha de vendas |
        | inicio              | 17/11/2018         |
        | fim                 | 22/11/2019         | 
        | obs                 | teste              |
    Quando seleciono as regras '<regra>' e filtros '<filtro>', 
    E faço o cadastro
    Então visualizo a campanha inativa criada na tela de gestão de campanhas

@cadastro_campanha_sms
Cenario: Cadastro campanha sms
    E possuo os seguintes dados:
        | nome                | Dia das maes       |
        | abrangencia_email   | Não                |
        | abrangencia_sms     | Sim                |
        | ambiente            | Vision             | 
        | descricao           | campanha de vendas |
        | inicio              | 17/11/2018         |
        | fim                 | 22/11/2019         |
        | obs                 | dia dos pais       |
    Quando seleciono as regras regras '<regra>' e filtros '<filtro>', e formato o sms
    E faço o cadastro
    Então visualizo a campanha inativa criada na tela de gestão de campanhas

@cadastro_campanha_email_sms
Cenario: Cadastro campanha e-mail e sms
    E possuo os seguintes dados:  
        | nome              | Dia das criancas   |
        | abrangencia_email | Sim                |
        | abrangencia_sms   | Sim                |
        | ambiente          | Vision             |
        | descricao         | campanha de vendas |
        | inicio            | 17/11/2018         |
        | fim               | 22/11/2019         |
        | obs               | dia dos pais       |
    Quando seleciono as regras '<regra>' e '<parametro>', e formato o email e sms
    E quando faço o cadastro
    Então visualizo a campanha criada

@validar_abrangencia
Cenário: Validar obrigatoriedade da abrangencia 
    E possuo os seguintes dados:
        | nome              | Dia das criancas   |
        | abrangencia_email | Sim                |
        | abrangencia_sms   | Sim                |
        | ambiente          | Vision             |
        | descricao         | campanha de vendas |
        | inicio            | 17/11/2018         |
        | fim               | 22/11/2019         |
        | obs               | dia dos pais       |

    Quando faço o meu cadastro sem selecionar abrangencia
    Então devo ver a mensagem de erro 
        | alerta           | É necessario ter pelo menos uma abrangencia marcada. |

@validar_ambiente
Cenário: Validar obrigatoriedade do ambiente
    E possuo os seguintes dados:
        | nome              | Dia das criancas   |
        | abrangencia_email | Sim                |
        | abrangencia_sms   | Não                |
        | ambiente          |                    |
        | descricao         | campanha de vendas |
        | inicio            | 17/11/2018         |
        | fim               | 22/11/2019         |
        | obs               | dia dos pais       |

    Quando faço o meu cadastro sem selecionar o ambiente
    Então devo ver a mensagem de erro 
        | alerta           | É necessario ter pelo menos um ambiente marcado. |
        
@validar_regra
Cenário: Validar obrigatoriedade de pelo menos uma regra cadastrada na campanha
    E possuo os seguintes dados:
        | nome              | Dia das criancas   |
        | abrangencia_email | Não                |
        | abrangencia_sms   | Sim                |
        | ambiente          | Loyalty            |
        | descricao         | campanha de vendas |
        | inicio            | 17/11/2018         |
        | fim               | 22/11/2019         |
        | obs               | dia dos pais       |
    Quando faço o meu cadastro sem selecionar 1 regra
    Então devo ver a mensagem de erro 
        | alerta           | É necessario ter pelo menos 1 regra cadastrada. |

@validar_formatacao_email
Cenário: Validar obrigatoriedade de formatar E-mail
    E possuo os seguintes dados:
        | nome              | Dia das criancas   |
        | abrangencia_email | Sim                |
        | abrangencia_sms   | Não                |
        | ambiente          | Loyalty            |
        | descricao         | campanha de vendas |
        | inicio            | 17/11/2018         |
        | fim               | 22/11/2019         |
        | obs               | dia dos pais       |
    Quando faço o meu cadastro sem formartar o email
    Então devo ver a mensagem de erro 
        | alerta           | É necessario a formatação do E-mail. |

@validar_formatacao_sms
Cenário: Validar obrigatoriedade de formatar SMS
    E possuo os seguintes dados:
        | nome              | Dia das criancas   |
        | abrangencia_email | Não                |
        | abrangencia_sms   | Sim                |
        | ambiente          | Loyalty            |
        | descricao         | campanha de vendas |
        | inicio            | 17/11/2018         |
        | fim               | 22/11/2019         |
        | obs               | dia dos pais       |
    Quando faço o meu cadastro sem formartar o SMS
    Então devo ver a mensagem de erro 
        | alerta         | É necessario a formatação do SMS. |

@validacoes_obrigatoriedade_cadastro
Esquema do Cenario: Validacoes em Cadastro
    E possuo os seguintes dados: 
        | nome              | <Nome>              |
        | abrangencia_email | <abrangencia_email> |
        | abrangencia_sms   | <abrangencia_sms>   |
        | ambiente          | <ambiente>          |
        | descricao         | <Descricao>         |
        | inicio            | <Inicio>            |
        | fim               | <Fim>               |
        | obs               | <Obs>               |
    Quando faço o meu cadastro
    Então devo ver a mensagem de erro '<alerta>'

    Exemplos:
        | Nome         | Abrangencia_email | Abrangencia_sms | Ambiente     | Descricao                 | Inicio     | Fim        | Obs | Alerta                                       |
        |              | Sim               | Sim             | Loyalty      | Apenas produto Eletronico | 17/09/2018 | 17/09/2019 |     | É necessário informar o nome.                |
        | Dia dos pais | Sim               | Sim             | Loyalty      |                           | 17/09/2018 | 17/09/2019 |     | É necessário informar uma descrição.         |
        | Dia dos pais | Sim               | Sim             | Loyalty      | Apenas produto Eletronico |            | 17/09/2019 |     | É ncessário informar uma data de inicio.     |
        | Dia dos pais | Sim               | Sim             | Loyalty      | Apenas produto Eletronico | 17/09/2018 |            |     | É ncessário informar uma data de fim.        |
        | Dia dos pais | Sim               | Sim             | Loyalty      | Apenas produto Eletronico | 17/09/2019 | 17/09/2018 |     | A data inicio deve ser menor que a data fim. |

