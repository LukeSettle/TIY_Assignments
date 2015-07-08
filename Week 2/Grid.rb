class Grid
  def initialize
    @ships = []
  end

  def has_ship_on? a, b
    @ships.find { |ship| ship.covers? a, b}
  end

  def place_ship ship, x, y, axis
    ship.place x, y, axis
    return false if @ships.find { |s| s.overlaps_with? ship}
    @ships << ship
  end

  def ship_holes
    @ships.map {|ship| ship.holes }.flatten
  end

  def fire_at(a, b)
  	return false if @ships.empty?
  	return false if a > 10 || b > 10
  	if @ships.find { |ship| ship.covers? a, b}
  	else
  		return false
  	end
  	true
  end

  def display
    board = []
    10.times { board << [" ", " ", " ", " ", " ", " ", " ", " ", " ", " "] }
    ship_holes.each do |hole|
      board[hole.y - 1][hole.x - 1] = hole.to_s
    end
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
    ("A".ord.."J".ord).each_with_index do |x, r|
      row = board[r]
      puts "#{x.chr} | #{row.join(" | ")} |"
    end
    puts "  -----------------------------------------"
  end
end