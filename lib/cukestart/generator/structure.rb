require 'thor'

module Cukestart
  module Generator
    class Structure < Thor::Group
      include Thor::Actions
      argument :project_name, :desc => "Name of the root directory"
      argument :front, :desc => "If it will be a front test project", :default => FALSE
      argument :page_object, :desc => "Will use page_object", :default => FALSE

      def self.source_root
        File.dirname(__FILE__)
      end

      def create_folders
        empty_directory(project_name)
        empty_directory("#{project_name}/features")
        empty_directory("#{project_name}/features/support")
        empty_directory("#{project_name}/features/step_definitions")
        empty_directory("#{project_name}/features/pages") if page_object & front
      end

      def copy_cucumber_yml
        copy_file('files/cucumber.yml', "#{project_name}/cucumber.yml")
      end

      def create_gemfile
        template('templates/gemfile.tt', "#{project_name}/Gemfile")
      end

      def create_env
        template('templates/env.tt', "#{project_name}/features/support/env.rb")
      end

      def create_capybara
        template('templates/capybara.tt',
                "#{project_name}/features/support/capybara.rb") if front
      end

    end
  end
end
