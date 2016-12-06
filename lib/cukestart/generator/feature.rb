require 'thor'

module Cukestart
  module Generator
    class Feature < Thor::Group
      include Thor::Actions
      argument :feature_name, :desc => "Name of the feature"

      def self.source_root
        File.dirname(__FILE__)
      end

      def is_cucumber_project
        binding.pry
      end

    end
  end
end