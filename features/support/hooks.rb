Before('@javascript') do
  require 'capybara/poltergeist'
  Capybara.current_driver = :poltergeist
end