require 'capybara/poltergeist'

if defined?(Konacha)
  Konacha.configure do |config|
    config.driver = :poltergeist
  end
end
