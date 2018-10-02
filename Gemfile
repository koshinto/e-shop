source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails',        '~> 5.2.1'
gem 'puma',         '~> 3.11'
gem 'devise'
# gem 'bootstrap-sass', '~> 3.3'
gem 'sass-rails',   '~> 5.0'
gem 'uglifier',     '>= 1.3.0'
# gem 'mini_racer', platforms: :ruby

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks',   '~> 5'
gem 'jbuilder',     '~> 2.5'
gem 'bcrypt',       '~> 3.1.7'
gem 'faker',        '~> 1.9'

gem 'bootstrap',    '~> 4.1'
gem 'jquery-rails', '~> 4.3'

# gem 'mini_magick', '~> 4.8'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',             '>= 3.3.0'
  gem 'listen',                  '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen',   '~> 2.0.0'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :development, :test do
  gem 'rspec-rails',   '~> 3.6.0'
end

group :production do
  gem 'pg', '~> 1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
