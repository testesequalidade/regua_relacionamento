Before do
    @login = LoginPage.new
    @pagina = LoginPage.new
    @cadastro = CadastroPage.new
    page.current_window.maximize 
end

Before('@auth') do
    @login.load
    teste = { 'login'       => 'testesequalidade@csu.com.br',
              'senha'       => 'aaaa2*',
              'organizacao' => 'TRIBANCO'
            }
    @login.logar(teste)
  end