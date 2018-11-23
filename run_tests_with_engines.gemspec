$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "run_tests_with_engines/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "run_tests_with_engines"
  s.version     = RunTestsWithEngines::VERSION
  s.authors     = ["Patrick Smandzich"]
  s.email       = ["patrick.smandzich@i22.de"]
  s.homepage    = ""
  s.summary     = "Add Command test_all to Rails Set"
  s.description = "Adds with_engines_test command to rails command set to " \
                  "enable running tests under test/**/* and engines/**/test/**/*"
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.3"
end
