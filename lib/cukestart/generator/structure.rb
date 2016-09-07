require 'thor'

module Cukestart
  module Generator
    class Structure < Thor::Group
      argument :project_name, :desc => "Name of the root directory", :default => "teste_gem"

      def self.source_root
        File.dirname(__FILE__) + :project_name
      end

    end
  end
end
