class Computer
  def initialize(id, data_source)
    @id = id
    @data_source = data_source
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send("#{name}_info", @id)
      price = @data_source.send("#{name}_price", @id)
      result = "#{name.capitalize}: #{info} ($#{price})"
      price >= 110 ? "* #{result}" : result
    end
  end

  define_component :mouse
  define_component :cpu
  define_component :keyboard
end