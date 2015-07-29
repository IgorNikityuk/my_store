require 'pry'
require 'active_record'
require 'factory_girl'
require 'rest-client'
require 'httparty'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/rails'


# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

Capybara.register_driver :selenium do |app|
  require 'selenium/webdriver'
  #Selenium::WebDriver::Firefox::Binary.path = "/opt/firefox/firefox"
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end
#Capybara.default_host = ENV['server'] || "http://staging.limos.com"
Capybara.default_driver = :selenium
Capybara.default_wait_time = 5

DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  #config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  #config.use_transactional_fixtures = true
  config.use_transactional_fixtures = false

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
  # Include the Capybara DSL so that specs in spec/requests still work.
  config.include Capybara::DSL
  # Disable the old-style object.should syntax.
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.include FactoryGirl::Syntax::Methods
  config.before(:all) do
    DatabaseCleaner.clean
  end
  config.after(:all) do
    DatabaseCleaner.clean
  end
  config.before(:each) do
    DatabaseCleaner.clean
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end

end


