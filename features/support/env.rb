require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil

#configurar capybara para usar com selenium
Capybara.configure do |config|
    config.default_driver = :selenium_chrome # essa configuração é para instanciar o browser com Firefox
    config.app_host = 'https://preproducao.optemais.com.br' 
    #(endereço do site q vou testar(
end
#configuração de tempo de espera para achar elemento na tela
Capybara.default_max_wait_time = 30