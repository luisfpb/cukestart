require 'thor'

module Cukestart
  module Generator
    class Structure < Thor::Group
      include Thor::Actions
      argument :project_name, :desc => "Name of the root directory"

      def self.source_root
        File.dirname(__FILE__)
      end

      def create_folders
        empty_directory(project_name)
        empty_directory("#{project_name}/features")
        empty_directory("#{project_name}/features/support")
        empty_directory("#{project_name}/features/step_definitions")
      end

      def generate_cucumber_yml
        template('templates/cucumber.tt', "#{project_name}/cucumber.yml")
      end



    end
  end
end
