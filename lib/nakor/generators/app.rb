require 'thor/group'
module Nakor
  module Generators
    class App < Thor::Group
      IMAGE_FILES = %W{
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

      SCRIPT_FILES = %W{
        active_record.lua
        geometry.lua
        io_ext.lua
        middleclass.lua
        orm.lua
        radlib.lua
        sql.lua
        string_ext.lua
        table_ext.lua
        time_ext.lua
        ui.lua
        underscore.lua
      }

      TEMPLATE_FILES = %W{
        about.lua
        build.settings
        config.lua
        help.lua
        init_buttons.lua
        loadmenu.lua
        main.lua
        menu.lua
        play.lua
        README
        settings.lua
      }

      include Thor::Actions

      argument :app_name, :type => :string

      def self.source_root
        File.dirname(__FILE__) + "/corona-game-template"
      end

      def create_group
        # Create the top-level app directory
        empty_directory app_name

        # Create the subdirectories
        create_subdirectory app_name
        create_subdirectory "#{app_name}/images"
        create_subdirectory "#{app_name}/scripts"
        create_subdirectory "#{app_name}/scripts/lib"
        create_subdirectory "server"
        create_subdirectory "assets"
        create_subdirectory "doc"
      end

      def copy_template_files
        TEMPLATE_FILES.each do |template_file|
          template template_file, "#{app_name}/#{app_name}/#{template_file}"
        end
      end

      def copy_script_files
        SCRIPT_FILES.each do |script_file|
          copy_file "scripts/lib/#{script_file}", "#{app_name}/#{app_name}/scripts/lib/#{script_file}"
        end
      end

      def copy_image_files
        IMAGE_FILES.each do |image_file|
          copy_file "images/#{image_file}", "#{app_name}/#{app_name}/images/#{image_file}"
        end
      end

      def done
        puts "Successfully generated '#{app_name}'"
      end

      private

      def create_subdirectory(subdir)
        empty_directory(File.join app_name, subdir)
      end
    end
  end
end

