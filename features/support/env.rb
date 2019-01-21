require 'capybara'
require 'selenium-webdriver'
require 'cucumber'
require 'pry'

# Configurar web-driver do Capybara
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 30
end


