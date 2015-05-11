source 'http://rubygems.org'

# Declare your gem's dependencies in didar.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]


group :development do

  gem 'faalis', :path => File.expand_path('../../Faalis/', __FILE__)
  gem 'pry'

  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'capybara'
  gem 'factory_girl_rails', '~> 4.0', require: false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'cucumber-rails', require: false
  gem 'json_spec', git: 'git://github.com/Yellowen/json_spec.git'
  gem 'capybara-webkit'

end
