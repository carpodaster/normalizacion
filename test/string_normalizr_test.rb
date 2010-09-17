require 'test/unit'
require File.dirname(__FILE__) + "/../lib/string_normalizr"

class StringNormalizrTest < Test::Unit::TestCase

  def test_string_integration
    assert "some string".respond_to?(:normalize)
  end

  def test_whitespaces
    assert_equal "foo", " foo   \n \t".normalize
  end

  def test_german_umlauts
    assert_equal "foeOebaerueghbAerUegh", "föÖbärüghbÄrÜgh"
  end

  def test_sz
    assert_equal "Strasse", "Straße"
  end

end