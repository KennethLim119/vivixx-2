require 'test/unit'
#require_relative 'cyoa'
class Profile
  attr_accessor :name, :age, :add
  def initialize(name, age, add)
    name = $name
    age = $age
    add = $add
  end

  def name
    $name
  end

  def age
    $age
  end

  def add
    $add
  end
end

class ProfileTest < Test::Unit::TestCase
  def test_name
    prof1=Profile.new($name, $age, $add)
    assert_equal($name, prof1.name)
  end
  def test_age
    prof1=Profile.new($name, $age, $add)
    assert_equal($age, prof1.age)
  end
  def test_add
    prof1=Profile.new($name, $age, $add)
    assert_equal($add, prof1.add)
  end

end
