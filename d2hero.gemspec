# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "d2hero/version"

Gem::Specification.new do |s|
  s.name        = "d2hero"
  s.version     = D2Hero::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrew Rosa"]
  s.email       = ["andrewhr@me.com"]
  s.homepage    = ""
  s.summary     = %q{A tool for extracting Diablo 2 character stats}
  s.description = %q{A tool for extracting Diablo 2 character stats}

  s.rubyforge_project = "d2hero"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", '~> 2.6'
end
