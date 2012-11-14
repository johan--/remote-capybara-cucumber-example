require 'capybara/cucumber'

Capybara.default_selector = :css

Capybara.default_wait_time = 10 

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

