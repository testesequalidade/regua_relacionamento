class CadastroPage < SitePrism::Page
    
    element :input_nome, '#NomeUsuario'
    element :input_cpf, '#CodigoCPF'
    element :input_email, '#Email'
    element :input_confirma_email, '#ConfirmarEmail'
    element :input_cs_usuario, '#CsUsuario'
    element :check_cs_usuario, '#CsUsuarioChecked'
    element :input_check_cs, '#CsUsuarioChecked'
    element :input_programa, '#CodigoPrograma'
    element :input_perfil, '#CodigoPerfil'
    element :check_usuario_parceiro, '#UsuarioParceiroChecked'
    element :popup_sucesso, '#popup_message'
    element :menu_usuario , 'a[href="#"]', match: :first
    element :menu_cadastro, 'a[href="/AdmOptemais/Incentivo/UsuarioAdmin/ManterUsuario"]' 

    def cadastrar (dado)
        input_nome.set dado['nome']
        input_cpf.click
        input_cpf.set dado['cpf']
        input_email.set dado['email']
        input_confirma_email.set dado['confirmar_email']
        input_programa.find('option', text: dado['programa']).select_option
        input_perfil.find('option', text: dado['perfil']).select_option
        click_button 'Salvar'
    end

    def url_cadastro
       visit '/AdmOptemais/Incentivo/UsuarioAdmin/CadastroUsuario'
    end

    def tela_cadastro
        menu_usuario.click
        menu_cadastro.click
        click_button 'Novo'
    end

end