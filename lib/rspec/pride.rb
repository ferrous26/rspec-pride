require 'rspec/core/formatters/base_text_formatter'

class Pride < RSpec::Core::Formatters::BaseTextFormatter

  # stolen from minitest/pride
  COLORS = (31..36).to_a
  COLORS_SIZE = COLORS.size
  CHARS = ["*"]
  CHARS_SIZE = CHARS.size

  def initialize io
    @colors = COLORS
    @chars  = CHARS
    @index  = 0
  end

  def example_passed proxy
    super
    @index += 1
    output.puts "\e[#{@colors[@index % COLORS_SIZE]}m#{@chars[@index % CHARS_SIZE]}\e[0m"
  end

  def example_failed proxy
    super
    output.puts "\e[41m\e[37mF\e[0m"
  end

  def example_pending proxy
    super
    output.puts "\e[41m\e[37m#P\e[0m"
  end

end
