
# Comando para maxizar a tela no teste
Before do
    Capybara.page.driver.browser.mange.window.maximize
end
# Comando que vai sinalizar que o teste foi finalizado
After do
    puts "Teste finalizado"
end