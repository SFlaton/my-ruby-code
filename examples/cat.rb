class  Cat
  attr_reader :name, :fur_color
  def initialize (name, fur_color)
    @name = name
    @fur_color = fur_color
  end
  def sound
    puts "#{@name} says prrrr"
  end
end
