require "test/unit"
require_relative '../lib/database'

class DatabaseTest < Test::Unit::TestCase
  def test_sql
    assert_equal('a_query', Database.sql('a_query'))
  end
end