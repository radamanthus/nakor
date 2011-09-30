require 'thor'
require 'nakor/generators/app'

module Nakor
  class CLI < Thor
    desc "generate APP_NAME", "generates an application"
    def generate(app_name)
      Nakor::Generators::App.start([app_name])
    end
  end
end
