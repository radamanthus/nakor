require 'thor'
require 'nakor/generators/app'

module Nakor
  class CLI < Thor
    desc "generate APP_NAME", "generates an application"
    def generate(app_name)
      Nakor::Generators::App.start([app_name])
    end

    desc "update_radlib APP_DIR", "updates radlib inside an existing application"
    def update_radlib(app_dir)
      Nakor::Utilities::UpdateRadLib.execute([app_dir])
    end
  end
end
