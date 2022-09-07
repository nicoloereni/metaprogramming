require 'test/unit'
require_relative '../lib/book'

class BookTest < Test::Unit::TestCase
  def test_book_print_to_screen
    b = Book.new
    b.print_to_screen
  end
end