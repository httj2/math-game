class Player
  attr_reader :name, :nick_name
  attr_accessor :lives

  def initialize(name, nick_name)
    @name = name
    @nick_name = nick_name
    @lives = 3
  end 
  
  def dead?
    @lives <= 0
  end


end 
