require_relative "HumanPlayer"
require_relative "ComputerPlayer"
require "byebug"

class Board
  def initialize
    @grid = []
    3.times { @grid << [nil, nil, nil] }
  end

  def to_s
    str = ""
    @grid.each do |row|
      row.each do |space|
        space = "-" unless space
        str += space
      end
      str += "\n"
    end
    str
  end

  def move r, c, who
    raise InvalidMoveException unless valid_move? r, c
    @grid[r][c] = who
  end

  def valid_move? r, c
    return false if r < 0 || c < 0
    return false if r >= @grid.length || c >= @grid[r].length
    @grid[r][c].nil?
  end

  def game_over?
    return true if winner
    return true if full?
    false
  end

  def full?
    @grid.each do |row|
      row.each do |s|
        return false if s.nil?
      end
    end
    true
  end

  def winner
    for c in 0..2 do
      return @grid[c][0] if @grid[c][0] == @grid[c][1] && @grid[c][0] == @grid[c][2]
      return @grid[0][c] if @grid[0][c] == @grid[1][c] && @grid[0][c] == @grid[2][c]
    end
    return @grid[0][0] if @grid[0][0] == @grid[1][1] && @grid[1][1] == @grid[2][2]
    return @grid[2][0] if @grid[2][0] == @grid[1][1] && @grid[1][1] == @grid[0][2]
    nil
  end
end

class InvalidMoveException < Exception
end



board = Board.new
puts "how many players?"
number_of_players = gets.chomp.to_i
until number_of_players <= 2 && number_of_players >= 0
  puts "You can play with 0, 1, or 2 players"
  number_of_players = gets.chomp.to_i
end
  if number_of_players == 0
    player1 = ComputerPlayer.new "X"
    player2 = ComputerPlayer.new "O"
  elsif number_of_players == 1
    player1 = HumanPlayer.new "X"
    player2 = ComputerPlayer.new "O"
  elsif number_of_players == 2
    player1 = HumanPlayer.new "X"
    player2 = HumanPlayer.new "O"
  end
    
# should be a player object
current_player = player1
while !board.game_over? do
  puts board.to_s
  move = current_player.get_move
  while !board.valid_move?(move[:row], move[:column])
    puts "Invalid move"
    move = current_player.get_move
  end
  board.move(move[:row], move[:column], current_player.letter)

  if current_player == player1
    current_player = player2
  else
    current_player = player1
  end
end

winner = board.winner

if winner
  puts "#{winner} won the game"
else
  puts "draw"
end

puts board.to_s