require_relative '../lib/my_open_struct'
require "test/unit"

class MyOpenStructTest < Test::Unit::TestCase
  def test_my_open_struct
    ice_cream = MyOpenStruct.new
    ice_cream.flavor = 'strawberry'
    assert_equal 'strawberry', ice_cream.flavor
  end
end