require_relative 'database'
require 'securerandom'

class Entity
  attr_reader :table, :ident

  def initialize
    @table = self.class
    @ident = SecureRandom.uuid
    Database.sql "INSERT INTO #{@table} (id) VALUES (#{@ident})"
  end

  def set(col, val)
    Database.sql"UPDATE #{@table} SET #{col}='#{val}' WHERE id=#{@ident}"
  end

  def get(col)
    Database.sql "SELECT #{col} FROM #{@table} WHERE id=#{@ident}"
  end

  def method_missing(method, *args, &block)
    #having access to db the condition is any? of the column names list
    return super method, *args, &block unless ['title', 'director'].any?{ |e| method.to_s.include? e }
    if method.to_s.include? '='
      self.class.send(:define_method, method) do |value|
        set(method.to_s.chomp("="), value)
      end
    else
      self.class.send(:define_method, method) do
        get(method.to_s)
      end
    end

    self.send method, *args, &block
  end
end