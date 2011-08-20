$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec/pride'
require 'stringio'

describe 'Some class' do

  50.times do |n|
    it "passes #{n}" do
      1.should == 1
    end
  end

  it 'should be pending'

  it 'should fail' do
    1.should == 0
  end

  10.times do |n|
    it "passed #{n}" do
      true.should be_true
    end
  end

end
