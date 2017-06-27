require 'test/unit'
require_relative 'creditcard'
class CredidCardTest < Test::Unit::TestCase
  def test_one
    assert_equal(false,validate('12345'))
  end
  def test_two
    assert_equal(true,validate('378282246310005'))
  end
  def test_three
    assert_equal(true,validate('6011111111111117'))
  end
  def testfour
    assert_equal(true,validate('5286676580131713'))
  end
  def testfive
    assert_equal(true,validate('5488093800084001'))
  end
end
