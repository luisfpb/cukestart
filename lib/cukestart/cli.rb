require 'thor'
require 'cukestart/generator/structure'

module Cukestart
  class Cli < Thor

    desc "project <project_name>", "Create your project"
    method_option :front, :desc => "If it will be a front test project", :type => :boolean, :aliases => "-f"
    method_option :page_object, :desc => "Will use page_object", :type => :boolean, :aliases => "-po"

    def project(project_name)
      Cukestart::Generator::Structure.start([project_name, options[:front], options[:page_object]])
    end

  end
end
