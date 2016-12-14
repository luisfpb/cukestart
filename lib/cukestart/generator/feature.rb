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
        if !Dir.exist?("features") or !File.exist?("features/support/env.rb")
          abort("It's not the root of a cucumber project!")
        end
      end

      def create_feature
        template('templates/feature.tt', "features/#{feature_name}.feature")
      end

    end
  end
end