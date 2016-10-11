
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
    puts "Make your selection!"

    self.player_one_choice = gets.chomp.downcase
    self.computer = %w(rock paper scissors).sample

    if player_one_choice == "r" && computer == "paper"
      puts "Player: ROCK vs Computer: PAPER ----- COMPUTER WINS"
    elsif player_one_choice == "r" && computer == "scissors"
      puts "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
    elsif player_one_choice == "r" && computer == "rock"
      puts "Player: ROCK vs Computer: ROCK ----- DRAW"
    elsif player_one_choice == "s" && computer == "scissors"
      puts "Player: SCISSORS vs Computer: SCISSORS ----- DRAW"
    elsif player_one_choice == "s" && computer == "paper"
      puts "Player: SCISSORS vs Computer: PAPER ----- PLAYER WINS"
    elsif player_one_choice == "s" && computer == "ROCK"
      puts "Player: SCISSORS vs Computer: ROCK ----- COMPUTER WINS"
    elsif player_one_choice == "p" && computer == "scissors"
      puts "Player: PAPER vs Computer: SCISSORS ----- COMPUTER WINS"
    elsif player_one_choice == "p" && computer == "rock"
      puts "Player: PAPER vs Computer: ROCK ----- PLAYER WINS"
    elsif player_one_choice == "p" && computer == "scissors"
      puts "Player: PAPER vs Computer: PAPER ----- DRAW"
    else
      puts "I'm sorry I didn't understand you.  Let's try again."
      play
    end





  end



end

game = Game.new
game.play
