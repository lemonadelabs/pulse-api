source 'https://rubygems.org'

gem 'rails', '~> 5.0.0'
gem 'pg', '~> 0.18'
gem 'puma'

# locked to this comit as there are breaking changes after it
gem 'jsonapi-resources', :git => "https://github.com/cerebris/jsonapi-resources.git",  :ref => '831e87503b4faeb15322d83cf82dbb264de6378f'
gem 'rack-cors', :require => 'rack/cors'

group :development, :test do
  gem 'byebug'
  gem 'capistrano', '~> 3.4.0'
  gem 'capistrano-rails', '~> 1.1.3'
  gem 'capistrano-rbenv', '~> 2.0.3'
  gem 'capistrano-rails-console'
  gem 'rspec-rails', '~> 3.0'
end

group :development do
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
