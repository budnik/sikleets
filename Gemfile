#ruby=1.9.3@sikleets
source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'unicorn', :group => :production

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'



gem 'twitter'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'jquery-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'twitter-bootstrap-rails'#, git: 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
  gem 'haml'
  gem 'haml-rails'
  gem 'haml_coffee_assets'
  gem 'backbone-on-rails'
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
  gem 'poltergeist'#, git: 'git://github.com/brutuscat/poltergeist.git'
end