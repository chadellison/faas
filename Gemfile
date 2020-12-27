source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'faker'
gem 'httparty'

group :development, :test do
  gem 'rspec-rails'
  gem 'simplecov', :require => false
  gem 'pry-rails'
  gem 'brakeman', require: false
end

group :development do
  gem 'listen', '~> 3.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
