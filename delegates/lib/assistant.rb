class Assistant
  def initialize name
    @name = name
  end

  def read_mail
    "#{@name} It's mostly spam"
  end

  def check_schedule
    "#{@name} You have a meeting today."
  end
end