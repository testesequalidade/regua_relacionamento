Dado("que eu acessei a página de cadastro") do
    @cadastro.tela_cadastro
  end
  
  Dado("possuo os seguintes dados:") do |table|
    @tabela = table.rows_hash  
  end
  
  Quando("faço meu cadastro") do
    @cadastro.cadastrar(@tabela)
  end
  
  Entao("devo ver a mensagem") do |mensagem_sucesso|
    expect(@cadastro.popup_sucesso.text).to eql mensagem_sucesso
  end