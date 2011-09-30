# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nakor/version"

Gem::Specification.new do |s|
  s.name        = "nakor"
  s.version     = Nakor::VERSION
  s.authors     = ["Radamanthus Batnag"]
  s.email       = ["rad@batnag.org"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "nakor"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "thor"

  s.add_development_dependency "aruba"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "rspec"
end
