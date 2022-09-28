require "test/unit"
require 'ruport'

class RuportTest < Test::Unit::TestCase
  def test_ruport_table
    table = Ruport::Data::Table.new :column_names => ["country", "wine"], :data => [["France", "Bordoux"], ["Italy", "Chianti"]]
    puts table.to_text

    table.rows_with_country("France").each { |e| puts e.to_csv}
  end
end