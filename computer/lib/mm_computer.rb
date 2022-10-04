class MMComputer
  def initialize(id, data_source)
    @id = id
    @data_source = data_source
  end

  def method_missing(name, *args)
    super unless @data_source.respond_to?("#{name}_info")
    info = @data_source.send("#{name}_info")
    price = @data_source.send("#{name}_price")
    result = "#{name.to_s.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price > 100
    result
  end
end