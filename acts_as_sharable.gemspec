$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_sharable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_sharable"
  s.version     = ActsAsSharable::VERSION
  s.authors     = ["Gabriel Tong"]
  s.email       = ["tongyangmath@gmail.com"]
  s.homepage    = "http://www.railsg.com"
  s.summary     = "Summary of ActsAsSharable."
  s.description = "Description of ActsAsSharable."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "sqlite3"
end
