require 'thor/group'
module Nakor
  module Generators
    class App < Thor::Group
      ASSET_FILES = %W{
        bk_default.png
        btn_about.png
        btn_about_over.png
        btn_help.png
        btn_help_over.png
        btn_play.png
        btn_play_over.png
        btn_settings.png
        btn_settings_over.png
        splash_screen.png
      }

      TEMPLATE_FILES = %W{
        about.lua
        build.settings
        config.lua
        director.lua
        help.lua
        init_buttons.lua
        loadmenu.lua
        main.lua
        menu.lua
        play.lua
        radlib.lua
        README
        settings.lua
        ui.lua
      }

      include Thor::Actions

      argument :app_name, :type => :string

      def self.source_root
        File.dirname(__FILE__) + "/corona-game-template"
      end

      def create_group
        empty_directory(app_name)
      end

      def copy_source_files
        TEMPLATE_FILES.each do |f|
          template f, "#{app_name}/#{f}"
        end
      end

      def copy_asset_files
        ASSET_FILES.each do |f|
          copy_file f, "#{app_name}/#{f}"
        end
      end

      def done
        puts "Successfully generated '#{app_name}'"
      end
    end
  end
end

