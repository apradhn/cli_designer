class CLIDesigner
  attr_accessor :width, :padding, :h_char, :v_char, :header_height

  def initialize(width=75, padding=5, h_char="-", v_char="#")
    @width = width
    @padding = padding
    @h_char = h_char
    @v_char = v_char
    @header_height = 5
  end

  def divider
    puts " " * padding + h_char.ljust(width, h_char)
  end

  def header(message)
    divider
    title_height = header_height / 2
    header_height.times do |i| 
      if i == title_height
        puts " " * padding + v_char + message.center(width-2) + v_char
      else
        puts " " * padding + v_char + " " * (width-2) + v_char
      end
    end
    # puts " " * padding + char + " " * (width-2) + char
    # puts " " * padding + char + message.center(width-2) + char
    # puts " " * padding + char + " " * (width-2) + char   
    divider 
    puts ""       
  end

  def ordered_list(array)
    array.each.with_index(1) do |elem, i|
      list_item("#{i}. #{elem}")
    end
  end

  def unordered_list(array)
    array.each.with_index(1) do |elem, i|
      list_item("#{v_char} #{elem}")
    end
  end

  def list_item(string)
    puts " " * padding + string.ljust(0.5 * width)
    divider
  end


end