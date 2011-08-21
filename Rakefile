require 'rubygems'

task :default => :test
task :test    => :spec

if RUBY_ENGINE == 'macruby' && MACRUBY_REVISION.match(/^git commit/)
  require 'rake/compiletask'
  Rake::CompileTask.new
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.skip_bundler = true
  spec.pattern = FileList['spec/**/*_spec.rb']
end

require 'rake/gempackagetask'
spec = Gem::Specification.load('rspec-pride.gemspec')
Rake::GemPackageTask.new(spec) { }

require 'rubygems/installer'
desc 'Build the gem and install it'
task :install => :gem do
  Gem::Installer.new("pkg/#{spec.file_name}").install
end
