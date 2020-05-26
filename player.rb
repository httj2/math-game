class Player
  attr_reader :name, :nick_name, :lives

  def initialize(name, nick_name)
    @name = name
    @nick_name = nick_name
    @lives = 3
  end 

  def lose_life
    @lives -= 1 
  end 
  
  def alive?
    @lives > 0
  end 


end 
