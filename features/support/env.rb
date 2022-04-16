require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
require_relative 'page.initialize.rb'
include RSpec::Matchers

Environment = ENV['URL']  # Aqui vai chamar o nosso aruivo cucumber yml para ser acessado no app.host

World(Page)  # Esse modulo page é global e vai conseguir acessar de qualquer ponto do projeto

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = Environment  # aqui é chamada a URL
    config.default_max_wait_time = 5
end   