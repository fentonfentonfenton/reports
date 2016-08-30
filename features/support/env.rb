
 require 'rubygems'
 require 'capybara/cucumber'
 require 'headless'
 require 'capybara-webkit'
 require 'selenium-webdriver'
 require 'rspec'
 require 'curb'
 require 'rmagick'
 require 'gifanime'
 
 Capybara::Webkit.configure do |config|
 config.allow_unknown_urls
 end
 
 Before('@headless') do
  ::Capybara.default_driver = :webkit
   ::Capybara.default_wait_time = 90    
   page.driver.resize_window(1920, 1080)
 end
 
 After do |scenario|
   if scenario.passed?
 	puts 'Cleaned and passed.'
 	end
 end
 
 After do |scenario|
   if scenario.failed?
   end
 end
