
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

  end


selection = %w(rock paper scissors).sample

end

game = Game.new
game.play
