class Question

  def initialize
    @num1 = rand(20) + 1
    @num2 = rand(20) + 1
  end

  def question_text
    "What does #{@numb1} + #{@num2} equal?"
  end

  def correct_answer
    @num1 + @num2
  end
  
end