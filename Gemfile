source 'https://rubygems.org'

# PostgreSQL driver
gem 'pg'
gem 'thin'

# Sinatra driver
gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-param'

gem 'activesupport', '~>4.1'
gem 'activerecord', '~>4.1'
gem 'bcrypt-ruby'
gem 'actionview'

gem 'rake'

gem 'shotgun'

gem 'mini_magick'
gem 'refile', git: 'https://github.com/elabs/refile.git'
gem "aws-sdk-v1"
gem 'aws-sdk', '2.0.17.pre'

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec'
  gem 'capybara'
end

group :development do
  gem "rack-livereload"
  gem "guard-livereload"
  gem "pry"
  gem "better_errors"
end

group :test, :development do
  gem 'factory_girl'
  gem 'faker'
  gem "dotenv"
end
