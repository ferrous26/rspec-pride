require 'rubygems'

task :default => :test
task :test    => :spec


require 'rspec/core/rake_task'
['failure', 'success'].each do |name|
  RSpec::Core::RakeTask.new("spec_#{name}") do |spec|
    spec.pattern = FileList["spec/#{name}_spec.rb"]
  end
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList["spec/{success,failure}_spec.rb"]
end

require 'rubygems/package_task'
spec = Gem::Specification.load('rspec-pride.gemspec')
Gem::PackageTask.new(spec) { }

require 'rubygems/installer'
desc 'Build the gem and install it'
task :install => :gem do
  Gem::Installer.new("pkg/#{spec.file_name}").install
end
