source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.12'
gem 'sqlite3'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'api-versions'
gem 'apipie-rails'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'bootstrap-sass', '>= 3.0.0.0'
gem 'devise'
gem 'figaro'
gem 'haml-rails'
gem 'simple_form'
gem 'therubyracer', :platform=>:ruby
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano-unicorn', :require=>false
  gem 'html2haml'
  gem 'rails_layout'
  gem 'rvm-capistrano'
end
group :development, :test do
  gem 'rspec-rails'
end
group :production do
  gem 'passenger'
  gem 'pg'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end
