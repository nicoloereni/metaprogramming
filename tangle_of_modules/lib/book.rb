require_relative 'document'
require_relative 'printable'

class Book
  include Document
  include Printable
end