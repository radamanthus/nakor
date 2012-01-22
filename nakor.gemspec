# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nakor/version"

Gem::Specification.new do |s|
  s.name        = "nakor"
  s.version     = Nakor::VERSION
  s.authors     = ["Radamanthus Batnag"]
  s.email       = ["rad@batnag.org"]
  s.homepage    = ""
  s.summary     = %q{Nakor is a gem that encapsulates the corona-game-template project.}
  s.description = %q{
    To create a new Corona SDK game using nakor, just run:

    nakor generate awesome_game

    This will create an awesome_game directory in the current directory, and copy all corona game template files into it.

    To run the generated game, type:

    /Applications/CoronaSDK/simulator awesome_game
  }

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
