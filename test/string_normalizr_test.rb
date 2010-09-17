require "test/unit"

class StringNormalizrTest < Test::Unit::TestCase

  def setup
    puts "hello"
  end

  def test_string_integration
    assert String.new.respond_to?(:normalize)
  end

end