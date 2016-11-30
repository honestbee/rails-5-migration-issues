source 'https://rubygems.org'


gem 'rails', '~> 4.2'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'active_model_serializers', '~> 0.9.3'
gem 'activerecord-postgis-adapter', '~> 3.0'
gem 'awesome_nested_set'
gem 'devise-i18n'
gem 'devise'
gem 'draper', '2.0'
gem 'globalize-accessors', '~> 0.1.5'
gem 'globalize', '~> 5.0.1'
gem 'pg', '~> 0.18' # Use postgresql as the database for Active Record
gem 'pry-rails' # For rails console tweak
gem 'rails-i18n'
gem 'searchkick', '~> 1.4' # For search
gem 'typhoeus', '~> 0.7.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
