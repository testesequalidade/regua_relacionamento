Dado("que acessei a pagina de login") do                                                                     
    @pagina.url_login                           
end                                                                                                          
                                                                                                               
Quando("faço login com:") do |table|                                          
    @tabela = table.rows_hash
    @login.logar(@tabela)
end                                                                                                                                                                              

Então("visualizo o nome {string} no cabeçalho da pagina") do |nome|
    cabecalho = find('#msgboasvidas').text
    expect(cabecalho).to have_content nome
end                                                                                                 
