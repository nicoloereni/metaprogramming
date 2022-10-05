require 'test/unit'
require_relative '../lib/bug_hunt'

class BugHuntTest < Test::Unit::TestCase
  def test_roulette
    roulette = BugHunt.new
    assert_true roulette.pippo.include? "Pippo got a "
    assert_true roulette.paperino.include? "Paperino got a "
    assert_raise(NoMethodError) { roulette.dwede }
  end
end