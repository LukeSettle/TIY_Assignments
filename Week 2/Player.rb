class Player
	attr_reader :grid, :name, :ships

  def initialize(name)
    @name = name
    @grid = Grid.new
    @ships = []
	end

  def place_ships ships_lengths
    ships_lengths.each do |length|
      puts "#{@name}, where would you like to place a ship of length #{length}?"
      cords =  get_user_input
      puts "Across or Down?"
      axis = get_user_input
      current_ship = Ship.new(length)
      @ships << current_ship
      x = @grid.x_of(cords)
      y = @grid.y_of(cords)
      @grid.place_ship(current_ship, x, y, axis == "across" )
    end
  end
end
