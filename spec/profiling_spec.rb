$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec/pride'
require 'stringio'

RSpec.configure do |c|
  c.profile_examples = true
end

describe 'Some class' do

  16.times do |n|
    it "passes #{n}" do
      expect(1).to eq 1
    end
  end

  it 'should be really slow' do
    sleep 2
  end

  4.times do |n|
    it "passed #{n}" do
      expect(true).to eq true
    end
  end

end
