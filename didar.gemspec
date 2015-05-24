$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "didar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|

  s.licenses = ['GPL-2']
  s.name        = "didar"
  s.version     = Didar::VERSION
  s.authors     = ["Behnam Ahmad Khan Beigi"]
  s.email       = ["yottanami@gnu.org"]
  s.homepage    = "http://yellowen.com"
  s.summary     = "Meating manager"
  s.description = "Meeting manager"
  s.license     = "GPL-2"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
  s.add_dependency 'faalis'

  s.add_dependency 'jquery-rails'

  s.add_dependency 'uglifier'
  s.add_dependency 'sass-rails'
  s.add_dependency 'jbuilder'
  s.add_dependency 'globalize'
end
