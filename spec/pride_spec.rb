$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec/pride'

describe 'passing' do

  it 'should print a star for passing tests'
  it 'should cycle colours for the passing tests'
  it 'should print a red F for failed tests'
  it 'should print a bold white P for pending tests'
  it 'should print a read F for error tests'

  describe 'the summary' do
    it 'should print the number of passing tests'
    it 'should print the number of failing tests'
    it 'should print the number of pending tests'
  end

end
