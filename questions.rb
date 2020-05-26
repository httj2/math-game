class Questions 
  attr_accessor :answer, :print
  def initialize
    @num1 = rand(1..20)
    @num2= rand(1..20)
    @answer = @num1 + @num2
    @print = "What does #{@num1} plus #{@num2} equal?"
  end 
end 
