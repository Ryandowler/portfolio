source 'http://rubygems.org'

ruby '2.2.4'

gem 'rails', '4.2.5.1'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'devise', '~> 4.2'
#gem 'activeadmin', github: 'activeadmin'
#gem 'active_skin'
gem 'carrierwave', '~> 1.0'
gem 'simple_form', '~> 3.3', '>= 3.3.1'
gem 'mini_magick'
gem 'font-mfizz-rails', '~> 1.1', '>= 1.1.0'
gem 'contact_us', '~> 1.0.1'




gem 'ruby_dep', '~> 1.3.1'
gem "rspec-rails", :group => [:test, :development]
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem "factory_bot_rails"
  gem 'capybara'
  gem 'guard-rspec'
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem "better_errors" #better error screen
  gem "binding_of_caller" #makes better error screen, even better
  gem 'pry-rails' #see what went wrong in any part of  Rails project
end

group :production do
  gem 'pg', '~> 0.15'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
