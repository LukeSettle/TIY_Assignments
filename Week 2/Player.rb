class Player
  attr_reader :grid, :name, :ships

  def initialize(name)
    @name = name
    @grid = Grid.new
    @ships = []
  end

  def place_ships ships_lengths
    ships_lengths.each do |length|
      success = false
      until success
        position = get_ship_position(length)
        current_ship = Ship.new(length)
        success = @grid.place_ship(current_ship, position[0], position[1], position[2] )
        puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again." unless success
      end
      @ships << current_ship
    end
  end

end
