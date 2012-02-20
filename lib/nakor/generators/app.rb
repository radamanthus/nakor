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
        active_record.lua
        build.settings
        config.lua
        help.lua
        init_buttons.lua
        io_ext.lua
        loadmenu.lua
        main.lua
        menu.lua
        middleclass.lua
        orm.lua
        play.lua
        radlib.lua
        README
        settings.lua
        string_ext.lua
        table_ext.lua
        time_ext.lua
        ui.lua
        underscore.lua
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
        TEMPLATE_FILES.each do |template_file|
          template template_file, "#{app_name}/#{template_file}"
        end
      end

      def copy_asset_files
        ASSET_FILES.each do |asset_file|
          copy_file asset_file, "#{app_name}/#{asset_file}"
        end
      end

      def done
        puts "Successfully generated '#{app_name}'"
      end
    end
  end
end

