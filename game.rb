require_relative "./player"
require_relative "./questions"

class Game

  def initialize 
    @player1 = Player.new("Player 1", "P1")
    @player2 = Player.new("Player 2", "P2")
    @players = [@player1, @player2].shuffle
    @round = 1
  end 

  def next_round
    puts " ---- New Turn -----"
  end 
  def game_over? #question mark means will return a boolean
    @player1.lives <= 0 || @player2.lives <= 0
  end 
  def game_status
    puts "#{@player1.nick_name}: #{@player1.lives}/3 vs. #{@player2.nick_name}: #{@player2.lives}/3"
  end 
  
  def display_winner
    puts "#{@player1.lives > 0 ? @player1.name : @player2.name} wins with a score of #{@player1.lives > 0 ? @player1.lives : @player2.lives}/3!"
    puts "--- Game Over ---"
    puts "Good bye!"
  end

  def play
    until(game_over?) do
      current_player = @players[0]
      question = Questions.new
      puts "#{current_player.name}: #{question.print}"
      print "> "
      user_answer = gets.chomp.to_i
      if user_answer == question.answer 
        puts "#{current_player.name}: Yes! you are correct!"
      else 
        puts "#{current_player.name}: Sorry! thats not right!"
        lose_point = current_player.lives -= 1 
      end 
      @players.rotate!
      game_status
      next_round
    end 
    display_winner
  end 
end 