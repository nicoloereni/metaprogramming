module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
    p "fomrat for screen"
  end

  def print
    p "print in Document"
  end
end