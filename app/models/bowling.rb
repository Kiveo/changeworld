class Bowling
  attr_accessor :score 

  def initialize 
    @score = 0
  end 

  def hit(pin_count)
    @score += pin_count   
  end

end
