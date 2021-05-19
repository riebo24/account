# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.7', '>= 5.0.7.2'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'factory_bot_rails' # テストコードを効率的に書く用。テストに利用するインスタンスをあらかじめ設定できる。
  gem 'rails-controller-testing' # コントローラテスト用
  gem 'rails-erd' # ER図を自動で作成できる
  gem 'rspec-rails' # テストコード用
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'unicorn', '5.4.1'
end

group :test do
  gem 'faker', '~> 2.8' # ダミーのテストデータを作成
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'erb2haml'
gem 'haml-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'chartable'
gem 'chartkick' # 円グラフ用
gem 'devise'
gem 'jquery-rails' # fullcalendar導入に必要
gem 'nested_form' # fields_for用
gem 'pry-rails'
# gem 'fullcalendar-rails' #fullcalendar導入に必要
# gem 'momentjs-rails' #fullcalendar導入に必要
gem 'autonumeric-rails' # formの数字にコンマをつける/使えてない
gem 'carrierwave'
gem 'fog-aws'
gem 'font-awesome-sass'
gem 'mini_magick'
gem 'rubocop', require: false
gem 'rubocop-airbnb'
gem 'rubocop-rails', require: false
gem 'simple_calendar', '~> 2.0'
