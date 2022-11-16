class Question
  attr_reader :num1, :num2
  def initialize
    @num1 = rand(21)
    @num2 = rand(21)
  end

  def qs 
    "What does #{@num1} plus #{@num2} equal?"
  end
end