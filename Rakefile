require 'rubygems'
require 'rake'

task :default => :test
task :test    => :spec

if RUBY_ENGINE == 'macruby'

  require 'rake/compiletask'
  Rake::CompileTask.new do |t|
    t.files = FileList["lib/**/*.rb"]
    t.verbose = true
  end

  desc 'Clean MacRuby binaries'
  task :clean do
    FileList["lib/**/*.rbo"].each do |bin|
      puts "rm #{bin}"
      rm bin
    end
  end

end


require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.skip_bundler = true
  spec.pattern = FileList['spec/**/*_spec.rb']
end


require 'rubygems/builder'
require 'rubygems/installer'
spec = Gem::Specification.load('rspec-pride.gemspec')

desc 'Build the gem'
task :build do Gem::Builder.new(spec).build end

desc 'Build the gem and install it'
task :install => :build do Gem::Installer.new(spec.file_name).install end
