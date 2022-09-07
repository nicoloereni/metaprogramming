require 'test/unit'
require_relative '../lib/alphanumeric'

class AlphanumericTest < Test::Unit::TestCase
    def test_strips_non_alphanumerical_characters
        assert_equal '3 the Magic Number', Alphanumeric.new.to_alphanumeric('#3, the *Magic Number?')
        assert_equal '3 the Magic Number', '#3, the *Magic Number?'.to_alphanumeric
    end
end