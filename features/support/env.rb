# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'faker'
require 'cpf_faker'
require 'gherkin'
require 'httparty'
require 'pry'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'httparty/request'
require 'httparty/response/headers'
require_relative 'helper'
require_relative 'page_helper'

World(Pages)
World(Helper)

ARGS = [
  'window-size=1920,1080',
  #'--headless',
  '--disable-infobars',
  '--disable-dev-shm-usage',
  '--disable-web-security',
  '--disable-gpu',
  '--disable-extensions',
  '--disable-browser-side-navigation',
  '--log-level=3',
  '--silent'
].freeze

Capybara.register_driver :site_prism do |app|
  options = Selenium::WebDriver::Chrome::Options.new(args: ARGS)
  Capybara.server_host = 'web'
  Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: options)
end

Capybara.configure do |config|
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 10
  config.app_host = 'https://www.ze.delivery'
end

