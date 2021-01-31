require "test/unit"
require_relative '../lib/entity'
class EntityTest < Test::Unit::TestCase
  setup do
    @entity = Entity.new
  end

  def test_get
    assert_equal('SELECT a_column FROM a_table WHERE id=an_id', @entity.get('a_column'))
  end

  def test_set
    assert_equal("UPDATE a_table SET a_column='a_val' WHERE id=an_id", @entity.set('a_column', 'a_val'))
  end
end