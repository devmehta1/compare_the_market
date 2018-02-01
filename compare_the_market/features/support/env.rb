require 'capybara/dsl'
require 'selenium-webdriver'
require 'rails'
require 'rspec'
require 'capybara/rspec'



Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.default_driver = :selenium_chrome
# Capybara_app_host = 'www.google.com'

Capybara.current_session.driver.browser.manage.window.maximize

World(Capybara::DSL)