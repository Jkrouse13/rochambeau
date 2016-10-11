class Game
  attr_accessor :player_one_choice, :computer

  # %w(rock paper scissors) == ["rock", "paper", "scissors"]
  def new_game
    puts "Let's rochambeau!"
    puts "Use 'r' to choose rock, 'p' to choose paper, and 's' to choose scissors."
    puts "Ready? (press any key)"
    gets
  end

  def play
    new_game
    game_play
  end

  def game_play
    puts "Make your selection!"

    self.player_one_choice = gets.chomp.downcase
    self.computer = %w(rock paper scissors).sample

    if player_one_choice == "r" && computer == "paper"
      puts "Player: ROCK vs Computer: PAPER ----- COMPUTER WINS"
      play_again?
    elsif player_one_choice == "r" && computer == "scissors"
      puts "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
        play_again?
    elsif player_one_choice == "r" && computer == "rock"
      puts "Player: ROCK vs Computer: ROCK ----- DRAW"
        play_again?
    elsif player_one_choice == "s" && computer == "scissors"
      puts "Player: SCISSORS vs Computer: SCISSORS ----- DRAW"
        play_again?
    elsif player_one_choice == "s" && computer == "paper"
      puts "Player: SCISSORS vs Computer: PAPER ----- PLAYER WINS"
        play_again?
    elsif player_one_choice == "s" && computer == "rock"
      puts "Player: SCISSORS vs Computer: ROCK ----- COMPUTER WINS"
        play_again?
    elsif player_one_choice == "p" && computer == "scissors"
      puts "Player: PAPER vs Computer: SCISSORS ----- COMPUTER WINS"
        play_again?
    elsif player_one_choice == "p" && computer == "rock"
      puts "Player: PAPER vs Computer: ROCK ----- PLAYER WINS"
        play_again?
    elsif player_one_choice == "p" && computer == "paper"
      puts "Player: PAPER vs Computer: PAPER ----- DRAW"
        play_again?
    else
      puts "I'm sorry I didn't understand you.  Let's try again."
      play
    end
  end


  def play_again?
    puts "Would you like to play again? (Press y to play again)"
    again = gets.chomp.downcase
    if again == "y"
      game_play
    else
      exit
    end
  end

end

game = Game.new
game.play
