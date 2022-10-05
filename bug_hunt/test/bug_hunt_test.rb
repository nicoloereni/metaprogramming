require 'test/unit'
require_relative '../lib/bug_hunt'

class BugHuntTest < Test::Unit::TestCase
  def test_roulette
    roulette = BugHunt.new
    p roulette.pippo
    p roulette.paperino
    assert_raise(NoMethodError) { roulette.dwede }
  end
end