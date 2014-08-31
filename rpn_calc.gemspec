require "#{File.dirname(__FILE__)}/lib/rpn_calc/version"

Gem::Specification.new do |s|
  s.name = "rpn_calc"
  s.version = rpn_calc::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Sofy K"]
  s.email = ["sofy.k87@gmail.com"]
  s.homepage = "http://sofyk.com"
  s.summary = "Reverse Polish Notation Calculator"
  s.description = "Reverse Polish Notation Calculator, which implements four basic operations."
  s.files = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  s.require_path = 'lib'
  s.executables = ["rpn_calc"]
  s.required_ruby_version = ">= 1.9.2"
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = "rpn_calc"
end

