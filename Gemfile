#ruby=1.9.3@sikleets
source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'unicorn', :group => :production
gem 'twitter'
gem 'haml'
gem 'twitter-bootstrap-rails'
gem 'backbone-on-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'jquery-rails'
  gem 'therubyracer', :platforms => :ruby
  gem 'haml_coffee_assets'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'sextant'
  gem 'awesome_print'
end

group :test do
  gem 'cucumber-rails', "~> 1.0", require: false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'poltergeist'
end
