$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec/pride'
require 'stringio'

RSpec.configure do |c|
  if ENV['TEST_PROFILING']
    c.profile_examples = true
  end
end

describe 'Some class' do

  16.times do |n|
    it "passes #{n}" do
      expect(1).to eq 1
    end
  end

  it 'should be pending'

  4.times do |n|
    it "passed #{n}" do
      expect(true).to eq true
    end
  end

end
