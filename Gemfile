source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
gem 'devise'

gem 'will_paginate', '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'
# Use sqlite3 as the database for Active Record

#gem 'carrierwave' #image uploader
gem 'carrierwave', github: 'carrierwaveuploader/carrierwave'
# gem 'carrierwave', 'https://github.com/carrierwaveuploader/carrierwave.git'
gem 'mini_magick' #image resize
gem 'fog' 

# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.3.6' 
gem 'sass-rails', '~> 5.0'
gem 'twitter-bootstrap-rails'
gem 'devise-bootstrap-views'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'stripe'
gem 'activemerchant'


gem 'braintree', '~> 2.47'
gem 'dotenv', '~> 2.0'


# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# 14/7/18 resolve security issue with traversal - upgrade from spr 3.5.2 to 3.7.2
gem 'sprockets', '~>3.7.2'

gem 'tawk_rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Force the `github:` syntax to use HTTPS instead of the Git protocol.
# The Git protocol isn't encrypted, and so is subject to MITM attacks.
# This can be removed once Bundler 2.0 is released.
# https://github.com/bundler/bundler/pull/2569
# git_source :github do |repo|
#   repo = "#{repo}/#{repo}" unless repo.include? '/'
#   "https://github.com/#{repo}.git"
# end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end