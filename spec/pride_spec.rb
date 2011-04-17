$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec/pride'
require 'stringio'

describe 'live status' do
  RED_HIGHLIGHT = 41
  BOLD_WHITE    = 40

  before do
    @output    = StringIO.new
    @formatter = Pride.new @output
  end

  it 'should print a star for passing tests' do
    @formatter.example_passed self
    @output.string.should match /\*/
  end

  # the same colour comes around with the same period
  it 'should cycle colours for the passing tests' do
    colours_count = Pride::COLORS.size
    test_count    = colours_count * 1000

    test_count.times { @formatter.example_passed self }
    occurences = @output.string.scan(/#{Pride::COLORS.sample}/).size

    occurences.should be_within(1).of(test_count/colours_count)
  end

  it 'should print an F highlighted in red for failed tests' do
    @formatter.example_failed self
    @output.string.should match /F/
    @output.string.should match /#{RED_HIGHLIGHT}/
  end

  it 'should print a bold white P for pending tests' do
    @formatter.example_pending self
    @output.string.should match /P/
    @output.string.should match /#{BOLD_WHITE}/
  end
end
