require 'rspec/core/formatters/base_text_formatter'

class Pride < RSpec::Core::Formatters::BaseTextFormatter

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
    @index += 1
    output.print "\e[#{@colors[@index % COLORS_SIZE]}m#{@chars[@index % CHARS_SIZE]}\e[0m"
  end

  def example_failed proxy
    super
    output.print "\e[41m\e[37mF\e[0m"
  end

  def example_pending proxy
    super
    output.print "\e[40m\e[37mP\e[0m"
  end

end
