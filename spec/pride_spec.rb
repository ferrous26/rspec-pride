$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec/pride'
require 'stringio'

RSpec.configure do |c|
  if ENV['TEST_PROFILING']
    c.profile_examples = true
  end
end

describe 'Some class' do

  50.times do |n|
    it "passes #{n}" do
      1.should == 1
    end
  end

  it 'should be pending'

  if ENV['TEST_PROFILING']
    it 'should be really slow' do
      sleep 2
    end
  else
    it 'should fail' do
      1.should == 0
    end
  end

  10.times do |n|
    it "passed #{n}" do
      true.should be_true
    end
  end

end
