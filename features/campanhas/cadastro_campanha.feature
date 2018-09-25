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
        | check_tipo_campanha | E-mail             |
        | tipo_sistema        | Loyalty            |
        | descricao           | campanha de vendas |
        | inicio              | 17/11/2018         |
        | fim                 | 22/11/2019         | 
        | obs                 | teste              |
    Quando seleciono as regras '<regra>' e '<parametro>', e formato o email
    E faço o cadastro
    Então visualizo a campanha inativa criada na tela de gestão de campanhas

@cadastro_campanha_sms
Cenario: Cadastro campanha sms
    E possuo os seguintes dados:
        | nome                | Dia das maes       |
        | check_tipo_campanha | SMS                |
        | tipo_sistema        | Vision             | 
        | descricao           | campanha de vendas |
        | inicio              | 17/11/2018         |
        | fim                 | 22/11/2019         |
        | obs                 | dia dos pais       |
    Quando seleciono as regras '<regra>' e '<parametro>', e formato o sms
    E faço o cadastro
    Então visualizo a campanha inativa criada na tela de gestão de campanhas

@cadastro_campanha_email_sms
Cenario: Cadastro campanha e-mail e sms
    E possuo os seguintes dados:  
        | nome             | Dia das criancas   |
        | check_tipo_email | E-mail             |
        | check_tipo_sms   | SMS                |
        | tipo_sistema     | Vision             |
        | descricao        | campanha de vendas |
        | inicio           | 17/11/2018         |
        | fim              | 22/11/2019         |
        | obs              | dia dos pais       |
    Quando seleciono as regras '<regra>' e '<parametro>', e formato o email e sms
    E quando faço o cadastro
    Então visualizo a campanha criada

@validar_tipo_camapnha
Cenário: Validar obrigatoriedade do tipo campanha
    E possuo os seguintes dados:
        | nome             | Dia das criancas   |
        | check_tipo_email |                    |
        | check_tipo_sms   |                    |
        | tipo_sistema     | Vision             |
        | descricao        | campanha de vendas |
        | inicio           | 17/11/2018         |
        | fim              | 22/11/2019         |
        | obs              | dia dos pais       |

    Quando faço o meu cadastro sem selecionar o tipo da campanha
    Então devo ver a mensagem de erro 
        | alerta           | É necessario ter pelo menos um tipo de envio marcado. |

@validar_tipo_sistema
Cenário: Validar obrigatoriedade do tipo sistema
    E possuo os seguintes dados:
        | nome             | Dia das criancas   |
        | check_tipo_email | email              |
        | check_tipo_sms   |                    |
        | tipo_sistema     |                    |
        | descricao        | campanha de vendas |
        | inicio           | 17/11/2018         |
        | fim              | 22/11/2019         |
        | obs              | dia dos pais       |

    Quando faço o meu cadastro sem selecionar o tipo do sistema
    Então devo ver a mensagem de erro 
        | alerta           | É necessario ter pelo menos um tipo de sistema marcado. |
        
@validar_regra
Cenário: Validar obrigatoriedade de pelo menos uma regra cadastrada na campanha
    E possuo os seguintes dados:
        | nome             | Dia das criancas   |
        | check_tipo_email | E-mail             |
        | tipo_sistema     | Loyalty            |
        | descricao        | campanha de vendas |
        | inicio           | 17/11/2018         |
        | fim              | 22/11/2019         |
        | obs              | dia dos pais       |
    Quando faço o meu cadastro sem selecionar 1 regra
    Então devo ver a mensagem de erro 
        | alerta           | É necessario ter pelo menos 1 regra cadastrada. |

@validar_formatacao_email
Cenário: Validar obrigatoriedade de formatar E-mail
    E possuo os seguintes dados:
        | nome             | Dia das criancas   |
        | check_tipo_email | E-mail             |
        | tipo_sistema     | Loyalty            |
        | descricao        | campanha de vendas |
        | inicio           | 17/11/2018         |
        | fim              | 22/11/2019         |
        | obs              | dia dos pais       |
    Quando faço o meu cadastro sem formartar o email
    Então devo ver a mensagem de erro 
        | alerta           | É necessario a formatação do E-mail. |

@validar_formatacao_sms
Cenário: Validar obrigatoriedade de formatar SMS
    E possuo os seguintes dados:
        | nome           | Dia das criancas   |
        | check_tipo_sms | SMS                |
        | tipo_sistema   | Loyalty            |
        | descricao      | campanha de vendas |
        | inicio         | 17/11/2018         |
        | fim            | 22/11/2019         |
        | obs            | dia dos pais       |
    Quando faço o meu cadastro sem formartar o SMS
    Então devo ver a mensagem de erro 
        | alerta         | É necessario a formatação do SMS. |

@validacoes_obrigatoriedade_cadastro
Esquema do Cenario: Validacoes em Cadastro
    E possuo os seguintes dados: 
        | nome             | <Nome>             |
        | check_tipo_email | <Check_Tipo_Email> |
        | check_tipo_sms   | <Check_Tipo_SMS    |
        | tipo_sistema     | <tipo_sistema>     |
        | descricao        | <Descricao>        |
        | inicio           | <Inicio>           |
        | fim              | <Fim>              |
        | obs              | <Obs>              |
    Quando faço o meu cadastro
    Então devo ver a mensagem de erro '<alerta>'

    Exemplos:
        | Nome         | Check_Tipo_Email | Check_Tipo_SMS | Tipo Sistema | Descricao                 | Inicio     | Fim        | Obs | Alerta                                       |
        |              | email            | sms            | Loyalty      | Apenas produto Eletronico | 17/09/2018 | 17/09/2019 |     | É necessário informar o nome.                |
        | Dia dos pais | email            | sms            | Loyalty      |                           | 17/09/2018 | 17/09/2019 |     | É necessário informar uma descrição.         |
        | Dia dos pais | email            | sms            | Loyalty      | Apenas produto Eletronico |            | 17/09/2019 |     | É ncessário informar uma data de inicio.     |
        | Dia dos pais | email            | sms            | Loyalty      | Apenas produto Eletronico | 17/09/2018 |            |     | É ncessário informar uma data de fim.        |
        | Dia dos pais | email            | sms            | Loyalty      | Apenas produto Eletronico | 17/09/2019 | 17/09/2018 |     | A data inicio deve ser menor que a data fim. |