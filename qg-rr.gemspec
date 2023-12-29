$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "qg/rr/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "qg-rr"
  s.version     = Qg::Rr::VERSION
  s.authors     = ["pawan bora"]
  s.email       = ["pawansinghbora4@gmail.com"]
  s.homepage    = "http://apibanking.com/"
  s.summary     = "Reconciled Return"
  s.description = "Reconciled Return"
  s.license     = "MIT"

  s.metadata['allowed_push_host'] = 'https://oQrmd9sJbFtYSixtZKSR@gem.fury.io/quantiguous/'
  s.files = Dir["{app,config,db,lib,spec}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 7.0.4"
  s.add_development_dependency "gemfury"

  s.add_development_dependency "sqlite3"
end
