class Alphanumeric
  def to_alphanumeric(s)
    s.gsub /[^\w\s]/, ''
  end
end

class String
  def to_alphanumeric
    self.gsub /[^\w\s]/, ''
  end
end