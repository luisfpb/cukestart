# coding: utf-8

lib = File.expand_path("../lib/", __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |gem|
  gem.name        = 'cukestart'
  gem.version     = File.read(File.expand_path('../lib/cukestart/version', __FILE__))
  gem.date        = '2016-09-05'
  gem.summary     = "Cukestart"
  gem.description = "Helps you to start and maintain your cucumber projects!"
  gem.authors     = ["Luis Felipe P. Benassi"]
  gem.email       = 'luisfelipebenassi@gmail.com'

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = ["cukestart"]
  gem.require_paths = ["lib"]
  gem.homepage      = 'https://luisfpb.github.io/cukestart/'
  gem.license       = 'MIT'

  gem.add_dependency 'thor', '0.19.1'

end
