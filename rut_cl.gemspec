$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rut_cl/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rut_cl"
  s.version     = RutCl::VERSION
s.authors     = ["Coto Cisternas"]
  s.email       = ["cotocisternas@gmail.com"]
  s.homepage    = "http://cotocisternas.cl/projects/rutcl"
  s.summary     = "Chilean RUN/RUT Validator"
  s.description = "rut_CL is a Chilean RUN/RUT validator and generator."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
end
