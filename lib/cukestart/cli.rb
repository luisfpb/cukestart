require 'thor'
require 'cukestart/generator/structure'

module Cukestart
  class Cli < Thor
    desc "project <project_name>", "Create your project"
    def project(project_name)
      Cukestart::Generator::Structure.start([project_name])
    end
  end
end