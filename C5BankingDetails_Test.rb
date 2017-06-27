require 'test/unit'
require_relative 'C5BankingDetails'

  def test_year
    assert_equal('Integer', $year.class.name)
  end
