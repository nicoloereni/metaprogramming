require 'test/unit'
require_relative '../lib/computer'

class ComputerTest < Test::Unit::TestCase
  def test_computer_component_creation
    computer = Computer.new('an_id', DataSource.new)
    assert_equal "Mouse: info for an_id ($100)", computer.mouse
    assert_equal "* Cpu: info for an_id ($110)", computer.cpu
    assert_equal "Keyboard: info for an_id ($100)", computer.keyboard
  end

  private

  class DataSource
    def method_missing(m, *args)
      if m.to_s.include?("_info") || m.to_s.include?("_price")
        if m.to_s.include?("_price")
          m.to_s.include?("cpu_") ? 110 : 100
        else
          "info for #{args[0]}"
        end
      else
        super
      end
    end
  end
end