# Chamando as gems necessarias
require 'capybara'
require 'selenium-webdriver'
require 'cucumber'
require 'pry'
require 'site_prism'
require 'capybara/cucumber'
require_relative 'page_helper.rb'

# Configurar web-driver do Capybara
World(PageObjects)
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://automacaocombatista.herokuapp.com'
  config.default_max_wait_time = 30
end
