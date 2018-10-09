Dado("que eu acessei a página de cadastro") do
    @cadastro.tela_cadastro
  end
  
  Dado("possuo os seguintes dados:") do |table|
    @tabela = table.rows_hash  
  end
  
  Quando("faco meu cadastro") do
    @cadastro.cadastrar(@tabela)
  end
  
  Entao("devo ver a mensagem") do |mensagem_sucesso|
    expect(@cadastro.popup_sucesso.text).to eql mensagem_sucesso
  end

  Então("devo ver a mensagem de erro {string}") do |string|
    
  end