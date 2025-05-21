source 'https://rubygems.org'
ruby '3.3.0'

gem 'rails', '7.2.2.1'
gem 'pg', '~> 1.5.4'
gem 'sassc-rails', '~> 2.1'
gem 'importmap-rails', '~> 2.0'
gem 'turbo-rails', '~> 1.3'
gem 'stimulus-rails', '~> 1.3'
gem 'jbuilder', '~> 2.11'
gem 'jquery-rails', '~> 4.6'
gem 'puma', '~> 6.4'
gem 'bootsnap', '~> 1.18', require: false
gem 'newrelic_rpm', '~> 9.6'
gem 'mutex_m', '~> 0.2.0'  # Required for zeitwerk compatibility with Ruby 3.4+

# ActiveAdmin
gem 'activeadmin', '~> 3.2'
gem 'ransack', '~> 4.1'
gem 'formtastic', '~> 5.0'
gem 'devise', '~> 4.9'  # Required for ActiveAdmin

# Assets
gem 'sprockets-rails', '~> 3.4'
gem 'terser', '~> 1.1'  # Modern replacement for uglifier
gem 'coffee-rails', '~> 5.0'  # Required for existing CoffeeScript files

group :development, :test do
  gem 'debug', '~> 1.9', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 6.1'
  gem 'factory_bot_rails', '~> 6.4'
  gem 'faker', '~> 3.2'
  gem 'rubocop', '~> 1.62', require: false
  gem 'rubocop-rails', '~> 2.24', require: false
  gem 'brakeman', '~> 6.1', require: false
  gem 'bundler-audit', '~> 0.9', require: false
 end

group :development do
  gem 'web-console', '~> 4.2'
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby]
  gem 'listen', '~> 3.8'
  gem 'spring', '~> 4.1'
  gem 'spring-watcher-listen', '~> 2.1'
  gem 'annotate', '~> 3.2'
  gem 'better_errors', '~> 2.10'
  gem 'binding_of_caller', '~> 1.0'
  gem 'rack-mini-profiler', '~> 3.3'
  gem 'solargraph', '~> 0.50'
 end

group :test do
  gem 'capybara', '~> 3.40'
  gem 'selenium-webdriver', '~> 4.10'
  gem 'webdrivers', '~> 5.3'
  gem 'simplecov', '~> 0.22', require: false
  gem 'shoulda-matchers', '~> 6.1'
  gem 'vcr', '~> 6.2'
  gem 'webmock', '~> 3.19'
 end