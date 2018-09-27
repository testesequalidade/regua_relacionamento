class LoginPage < SitePrism::Page 

    element :input_login, '#Email'
    element :input_senha, '#Senha'
    element :input_organizacao, '#CodigoOrganizacao'
    
    
    def logar(dados)
    input_login.set dados['login']
    input_senha.set dados['senha']
    input_organizacao.find('option', text: dados['organizacao']).select_option
    click_button 'Entrar'
    end
    
    def url_login
        visit '/AdmOptemais/Incentivo/'
    end
end