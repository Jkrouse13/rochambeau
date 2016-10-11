class Game
  attr_accessor :computer1, :computer2, :rock_win_tally, :paper_win_tally, :scissors_win_tally, :draw_tally, :error_tally

  # %w(rock paper scissors) == ["rock", "paper", "scissors"]
  def initialize
    self.rock_win_tally = 0
    self.paper_win_tally = 0
    self.scissors_win_tally = 0
    self.draw_tally = 0
    self.error_tally = 0
  end

  def play
    self.computer1 = %w(rock paper scissors).sample
    self.computer2 = %w(rock paper scissors).sample

    if computer1 == computer2
      self.draw_tally += 1
    elsif computer1 == "rock" && computer2 == "paper"
      self.paper_win_tally += 1
    elsif computer1 == "rock" && computer2 == "scissors"
      self.rock_win_tally += 1
    elsif computer1 == "paper" && computer2 == "scissors"
      self.scissors_win_tally += 1
    elsif computer1 == "paper" && computer2 == "rock"
      self.paper_win_tally += 1
    elsif computer1 == "scissors" && computer2 == "rock"
      self.rock_win_tally += 1
    elsif computer1 == "scissors" && computer2 == "paper"
      self.scissors_win_tally += 1
    else
      self.error_tally += 0

    end

  end

end

game = Game.new
1000.times {game.play}
  puts "Rock won #{game.rock_win_tally} times!"
  puts "Paper won #{game.paper_win_tally} times!"
  puts "Scissors won #{game.scissors_win_tally} times!"
  puts "There were #{game.draw_tally} draws!"
  puts "There were #{game.error_tally} errors!"
