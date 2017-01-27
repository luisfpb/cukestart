require 'thor'
require 'cukestart/generator/structure'
require 'cukestart/generator/feature'

module Cukestart
  class Cli < Thor

    desc 'project <project_name>', 'Create your project'
    method_option :front, :desc => 'If it will be a front test project', :type => :boolean, :aliases => 'f'
    method_option :page_object, :desc => 'Will use page_object', :type => :boolean, :aliases => 'p'
    map %w(p) => :project
    def project(project_name)
      Cukestart::Generator::Structure.start([project_name, options[:front], options[:page_object]])
    end

    desc 'feature <feature_name>', 'Create a feature file'
    map %w(f) => :feature
    def feature(feature_name)
      Cukestart::Generator::Feature.start([feature_name])
    end

    desc 'version', 'Show Cukestart gem version'
    map %w(-v --version) => :version
    def version
      puts "Cukestart #{File.read(File.expand_path('../version', __FILE__))}"
    end

    desc 'list', 'List all features and scenarios in project or folder'
    method_option :feature, :desc => 'List all feature and its scenarios if asked', :type => :boolean
    method_option :scenario, :desc => 'List all scenarios', :type => :boolean
    def list
      features = `find . -name "*.feature"`
      features = features.split("\n")
      project_last = ""
      features.each do |feature|
        project = feature.split("/")[-2]
        if project != project_last
          puts "--- #{project}  ---"
          project_last = project
        end
        feature_name = `cat #{feature} | grep 'Feature:'`
        puts feature_name if options[:feature]
        scenarios = `cat #{feature} | grep 'Scenario:'`
        scenarios = scenarios.split("\n")
        scenarios.each do |scenario|
          puts scenario if options[:scenario]
        end
      end
    end
  end
end
