Gem::Specification.new do |s|
  s.name        = "guard-soca"
  s.version     = "0.1.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Luke Amdor"]
  s.email       = ["luke.amdor@gmail.com"]
  s.homepage    = "http://github.com/rubbish/guard-soca"
  s.summary     = "Guard gem for soca"
  s.description = "Guard::Soca runs soca's push automatically"

  s.rubyforge_project = "guard-soca"

  s.required_rubygems_version = ">= 1.3.6"

#  s.add_development_dependency "rspec"

  s.files        = Dir.glob("lib/**/*")
  s.require_path = 'lib'
end
