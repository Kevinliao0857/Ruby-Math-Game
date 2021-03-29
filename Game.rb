class Game

  def initialize
    @player_1 = Player.new(1)
    @player_2 = Player.new(2)
    @current_player = @player_1
  end

  def start_game
    puts "--------------------------------"
    puts "Welcome to the Ruby Math Game!!!"
    puts "--------------------------------"
    puts "Each player has 3 lives \nYou lose a life when you answer incorrectly\nThe game ends when one person runs out of lives"
    ask_to_start
  end

  def ask_to_start
    puts "\n---------- READY SET GO ----------"
    puts "\n-------- GAME STARTS NOW! --------"
    next_turn
  end

  def next_turn
    turn = Turn.new(@current_player.id)
    player_answer = turn.ask_question

    if (player_answer == false)
      @current_player.lose_life
  end

    show_score

    if (@current_player.current_lives == 0)
      end_game
    else
      switch_player
      puts "\n-------- New Turn --------"
      next_turn
    end
  end

  def switch_player
    @current_player = @current_player == @player_1 ? @player_2 : @player_1
  end

  def show_score
    puts "P1: #{@player_1.current_lives}/3 vs P2: #{@player_2.current_lives}/3"
  end

  def end_game
    puts "\nPlayer #{@current_player.id} wins with a score of #{@current_player.current_lives}/3"
    puts "\n-------- Game Over --------"
    puts "-------- Good Bye! --------"
    exit(0)
  end

end