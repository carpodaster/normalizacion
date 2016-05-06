require 'test_helper'

class StringNormalizrTest < MiniTest::Unit::TestCase

  def test_string_integration
    assert "some string".respond_to?(:normalize)
  end

  def test_whitespaces
    assert_equal "This-is-an-example", "This is an example".normalize
    assert_equal "This is an example", "This is an example".normalize(:replace_whitespaces => false)
    assert_equal "This=is=an=example", "This is an example".normalize(:replace_whitespaces => "=")

    assert_equal "foo", " foo   \n \t".normalize
    assert_equal "foo   \n \t", "foo   \n \t".normalize(:strip => false, :replace_whitespaces => false)
  end

  def test_downcase
    assert_equal "this-is-an-example", "This is an Example".normalize(:downcase => true)

  end

  def test_bang
    foo = "some stríng"
    assert foo.respond_to?(:normalize!)
    foo.normalize!
    assert_equal "some-string", foo
  end

  def test_accents
    assert_equal "a", "á".normalize
    assert_equal "a", "à".normalize
    assert_equal "a", "â".normalize
    assert_equal "A", "Á".normalize
    assert_equal "A", "À".normalize
    assert_equal "A", "Â".normalize
    assert_equal "e", "é".normalize
    assert_equal "e", "è".normalize
    assert_equal "E", "É".normalize
    assert_equal "E", "È".normalize
    assert_equal "i", "í".normalize
    assert_equal "i", "ì".normalize
    assert_equal "i", "î".normalize
    assert_equal "I", "Í".normalize
    assert_equal "I", "Ì".normalize
    assert_equal "I", "Î".normalize
    assert_equal "o", "ó".normalize
    assert_equal "o", "ò".normalize
    assert_equal "o", "ô".normalize
    assert_equal "O", "Ó".normalize
    assert_equal "O", "Ò".normalize
    assert_equal "O", "Ô".normalize
    assert_equal "u", "ú".normalize
    assert_equal "u", "ù".normalize
    assert_equal "U", "Ú".normalize
    assert_equal "U", "Ù".normalize
  end

  def test_umlauts
    assert_equal "ae", "ä".normalize
    assert_equal "Ae", "Ä".normalize
    assert_equal "oe", "ö".normalize
    assert_equal "Oe", "Ö".normalize
    assert_equal "ue", "ü".normalize
    assert_equal "Ue", "Ü".normalize
  end

  def test_spanish_chars
    assert_equal "c", "ç".normalize
    assert_equal "C", "Ç".normalize
    assert_equal "n", "ñ".normalize
    assert_equal "N", "Ñ".normalize
  end

  def test_scandinavian_chars
    assert_equal "a", "å".normalize
    assert_equal "A", "Å".normalize
    assert_equal "o", "ø".normalize
    assert_equal "O", "Ø".normalize
  end

  def test_ligatures
    assert_equal "ae", "æ".normalize
    assert_equal "Ae", "Æ".normalize
    assert_equal "oe", "œ".normalize
    assert_equal 'Oe', 'Œ'.normalize
    assert_equal "ss", "ß".normalize
  end

  def test_diaresises
    assert_equal "e", "ë".normalize
    assert_equal "E", "Ë".normalize
    assert_equal "i", "ï".normalize
    assert_equal "I", "Ï".normalize
    assert_equal "y", "ÿ".normalize
    assert_equal "Y", "Ÿ".normalize
  end

end
