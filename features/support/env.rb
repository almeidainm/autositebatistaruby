# Chamando as gems necessarias
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'site_prism'


require_relative 'page_helper.rb'
require_relative 'helper.rb'


# Configurar web-driver do Capybara
World(PageObjects)
World(Helper)
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://automacaocombatista.herokuapp.com'
  config.default_max_wait_time = 30
end
