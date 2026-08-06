source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '4.0.5'

gem 'active_storage_validations', '3.0.5'
gem 'bcrypt'                    , '3.1.22'
gem 'bootsnap'                  , '1.24.6', require: false
gem 'bootstrap-sass'            , '3.4.1'
gem 'bootstrap-will_paginate'   , '1.0.0'
gem 'concurrent-ruby'           , '1.3.8'
gem 'faker'                     , '3.8.0'
gem 'image_processing'          , '2.0.2'
gem 'importmap-rails'           , '2.2.3'
gem 'jbuilder'                  , '2.15.1'
gem 'puma'                      , '8.0.2'
gem 'rails'                     , '8.1.3'
gem 'sassc-rails'               , '2.1.2'
gem 'sprockets-rails'           , '3.5.2'
gem 'sqlite3'                   , '2.9.5'
gem 'stimulus-rails'            , '1.3.4'
gem 'turbo-rails'               , '2.0.23'
gem 'will_paginate'             , '3.3.1'
gem "config"                    , "5.6.1"

group :development, :test do
  gem 'debug',  '1.11.1', platforms: %i[mri mingw x64_mingw]
  gem 'reline', '0.6.3'
end

group :development do
  gem 'irb',                 '1.18.0'
  gem 'repl_type_completor', '0.1.15'
  gem 'solargraph',          '0.60.2'
  gem 'web-console',         '4.3.0'
end

group :test do
  gem 'capybara',                 '3.40.0'
  gem 'guard',                    '2.20.2'
  gem 'guard-minitest',           '3.0.0'
  gem 'minitest',                 '6.0.6'
  gem 'minitest-reporters',       '1.8.0'
  gem 'mutex_m'
  gem 'rails-controller-testing', '1.0.5'
  gem 'selenium-webdriver',       '4.46.0'
end

group :production do
  gem 'mailgun-ruby', "1.4.4"
end

# Windows ではタイムゾーン情報用の tzinfo-data gem を含める必要があります
# gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
