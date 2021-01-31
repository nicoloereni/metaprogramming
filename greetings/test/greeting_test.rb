require "test/unit"
require_relative "../greetings/lib/b.rb"

class GreetingTest < Test::Unit::TestCase
  def test_greeting
    object = Greeting.new "Hello"
    assert_equal(Greeting, object.class)
    assert_equal([:welcome], object.class.instance_methods(false))
    assert_equal([:@text], object.instance_variables)
  end
end