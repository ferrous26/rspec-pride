$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec/pride'
require 'stringio'

describe 'Some class' do

  8.times do |n|
    it "passes #{n}" do
      expect(1).to eq 1
    end
  end

  it 'should fail' do
    expect(1).to eq 0
  end

  4.times do |n|
    it "passed #{n}" do
      expect(true).to eq true
    end
  end

end
