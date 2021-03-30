class Turn

  def initialize(id)
    @id = id
    @question = Question.new
  end

  def ask_question
    puts "Player #{@id}: #{@question.question_text}"
    print "> "
    player_answer = gets.chomp.to_i

    if (player_answer == @question.correct_answer)
      puts "Player #{@id}: YES! You are correct."
      true
    else
      puts "Player #{@id}: Seriously? No!"
      false
    end
  end
end