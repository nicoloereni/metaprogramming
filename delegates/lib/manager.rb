require 'delegate'

class Manager < DelegateClass(Assistant)
  def initialize assistant
    super(assistant)
  end

  def attend_meeting
    "Pls hold my calls"
  end
end