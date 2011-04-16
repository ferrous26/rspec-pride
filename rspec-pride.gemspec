Gem::Specification.new do |s|
  s.name    = 'rspec-pride'
  s.version = '1.0.0'

  s.summary       = 'Take pride in your testing'
  s.description   = 'Mimics the functionality of minitest/pride for Rspec2'
  s.author        = 'Mark Rada'
  s.email         = 'mrada@marketcircle.com'
  s.homepage      = 'http://github.com/ferrous26/rspec-pride'
  s.licenses      = ['MIT']
  s.require_paths = ['lib']

  s.files            = Dir.glob("lib/**/*")
  s.test_files       = Dir.glob("spec/**/*")
  s.extra_rdoc_files = [ 'Rakefile', 'README.rdoc' ]

  s.add_dependency 'rspec',  ['~> 2.5']
end
