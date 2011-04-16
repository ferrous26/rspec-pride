class PrideFormatter < RSpec::Core::Formatters::BaseTextFormatter

  def initialize output
    super
  end

  def example_started proxy
    output << "example: " << proxy.description
  end

end
