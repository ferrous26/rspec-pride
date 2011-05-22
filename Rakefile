require 'rake'

task :default => :test
task :test    => :spec

if RUBY_ENGINE == 'macruby' && MACRUBY_REVISION.match(/^git commit/)

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


require 'rake/gempackagetask'
spec = Gem::Specification.load('rspec-pride.gemspec')
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_zip = false
  pkg.need_tar = true
end

require 'rubygems/installer'
desc 'Build the gem and install it'
task :install => :gem do
  Gem::Installer.new(spec.file_name).install
end
