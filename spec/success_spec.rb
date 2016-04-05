$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec/pride'
require 'stringio'

describe 'Some class' do

  64.times do |n|
    it "passes #{n}" do
      expect(1).to eq 1
    end
  end

end
