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
  end

  def next_turn

  end

  def switch_player

  end

  def show_score

  end

  def end_game
  
  end

end