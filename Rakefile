require 'rubygems'

task :default => :test
task :test    => :spec


require 'rspec/core/rake_task'
['failure', 'success', 'pending'].each do |name|

  task_name = "spec_#{name}"

  RSpec::Core::RakeTask.new(task_name) do |spec|
    spec.pattern = FileList["spec/#{name}_spec.rb"]
  end
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList["spec/{success,failure,pending}_spec.rb"]
end

require 'rubygems/package_task'
spec = Gem::Specification.load('rspec-pride.gemspec')
Gem::PackageTask.new(spec) { }

require 'rubygems/installer'
desc 'Build the gem and install it'
task :install => :gem do
  Gem::Installer.new("pkg/#{spec.file_name}").install
end
