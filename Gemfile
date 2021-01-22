# frozen_string_literal: true

source 'https://flipplib.jfrog.io/flipplib/api/gems/flipp-gems/'

gem 'flipp-ruby-kafka', '~> 2.3', require: 'flipp_ruby_kafka'

# Use SCSS for stylesheets
gem 'sassc-rails', '~> 1.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'


# Use Puma as the app server
gem 'puma', '~> 4.3'

# silences /ping route
gem 'silencer', '~> 1.0', require: false

gem 'mysql2', '~> 0.4'
gem 'activerecord-import', '~> 0.25'
gem 'will_paginate', '~> 3.1'

gem 'rails', '~> 6.0'

# For Linux
gem 'tzinfo-data', '~> 1.2019'

gem 'flipp-rails-logger', '~> 1.0', require: false

# Datadog
gem 'ddtrace', '~> 0.28', require: false
gem 'flipp-ruby-dogstatsd', '~> 1.0.0'

group :development, :test do
  gem 'datadog_helper', '~> 0.2'
  gem 'flipp_ruby_style'
  gem 'guard'
  gem 'guard-rspec'
  gem 'listen', '~> 3.0.5'
  gem 'pry', require: false
  gem 'pry-byebug', require: false
  gem 'retriable'
  gem 'spring', '~> 2'
  gem 'spring-watcher-listen', '~> 2.0'
end

group :test do
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 5.1'

  gem 'rspec-rails', '~> 3'
  gem 'simplecov'
  gem 'spring-commands-rspec', '~> 1.0'
  # Required to collect CircleCi data
  gem 'rspec_junit_formatter', '~> 0.4'
end

group :development do
  gem 'annotate', '~> 3.0'

  gem 'better_errors', '~> 2.5'
  gem 'binding_of_caller', '~> 0.8'
end
