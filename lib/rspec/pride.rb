require 'rspec/core/formatters/base_text_formatter'

class RSpec::Pride < RSpec::Core::Formatters::BaseTextFormatter

  # stolen from minitest/pride
  COLORS = (31..36).to_a
  COLORS_SIZE = COLORS.size
  CHARS = ['*']
  CHARS_SIZE = CHARS.size

  def initialize io
    super
    @colors = COLORS
    @chars  = CHARS
    @index  = 0
  end

  def example_passed proxy
    super
    output.print rainbow( @chars[@index % CHARS_SIZE] )
  end

  def example_failed proxy
    super
    output.print red( 'F' )
  end

  def example_pending proxy
    super
    output.print bold_white( 'P' )
  end


  private

  def bold_white string; "\e[40m\e[37m#{string}"      + reset_color; end
  def red string;        "\e[41m\e[37m#{string}"      + reset_color; end
  def rainbow string;    "\e[#{next_color}m#{string}" + reset_color; end

  def next_color
    @index += 1
    @colors[@index % COLORS_SIZE]
  end

  def reset_color
    "\e[0m"
  end
end
