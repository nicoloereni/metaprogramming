require "test/unit"
require_relative '../lib/entity'
require 'mocha/setup'

class EntityTest < Test::Unit::TestCase
  setup do
    SecureRandom.stubs(:uuid).returns('an_id')
    @entity = Entity.new
  end

  def test_get
    assert_equal('SELECT a_column FROM Entity WHERE id=an_id', @entity.get('a_column'))
  end

  def test_set
    assert_equal("UPDATE Entity SET a_column='a_val' WHERE id=an_id", @entity.set('a_column', 'a_val'))
  end
end