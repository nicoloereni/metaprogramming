require "test/unit"
require_relative '../lib/assistant'
require_relative '../lib/manager'

class AssistantAnneTest < Test::Unit::TestCase
  def test_anne
    frank = Assistant.new("Frank")
    anne = Manager.new(frank)

    assert_equal"Pls hold my calls", anne.attend_meeting
    assert_equal"Frank It's mostly spam", anne.read_mail
    assert_equal"Frank You have a meeting today.", anne.check_schedule
  end
end