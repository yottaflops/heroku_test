source 'https://rubygems.org'
ruby '2.1.4'
gem 'rails', '4.1.5'

gem 'federal_register'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

gem 'bootstrap-sass', '~> 3.2.0'
gem 'sass-rails', '>= 3.2'
gem 'autoprefixer-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
#Use devise for sessions
gem 'devise'
# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
#gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end

group :test do
  gem 'rspec-rails', '~> 3.0.0'
  gem 'rspec-activemodel-mocks'
  gem 'factory_girl_rails', '~> 4.2.1'
end

group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'pry-doc'
  # Use sqlite3 as the database for Active Record in non prod environment
  gem 'sqlite3'
end
