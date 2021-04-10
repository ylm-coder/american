require "./test/test_helper"

class AmericanTest < Minitest::Test
  def test_it_exits
    american = American.new("tounchdown")
    assert_instance_of American, american
  end

  def test_it_has_readable_thing_attributes
    american = American.new("tounchdown")
    assert_equal "tounchdown", american.thing
  end

  def test_it_raises_error_if_thing_is_invalid
    assert_raises(InvalidAmericanError) { American.new("defence") }
  end

  def test_it_calculate_points
    american = American.new("tounchdown")
    american2 = American.new("field goal")
    american3 = American.new("safety")

    assert_equal "number you won seven points", american.points
    assert_equal "number you won two points", american2.points
    assert_equal "number you won three points", american3.points
  end
end
