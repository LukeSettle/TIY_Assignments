def get_user_input
  gets.chomp
end

class Player
<<<<<<< HEAD
  attr_reader :name, :grid, :ships
  def initialize (name)  #Human or Computer
    @name  = name
    @grid  = Grid.new
    @ships = []
  end
=======
  attr_reader :grid, :name, :ships

  def initialize(name)
    @name = name
    @grid = Grid.new
    @ships = []
  end

>>>>>>> ac43400017f94182ba2f2cadda11aac19e17aa69
  def place_ships ships_lengths
    ships_lengths.each do |length|
      success = false
      until success
        position = get_ship_position(length)
        current_ship = Ship.new(length)
        success = @grid.place_ship(current_ship, position[0], position[1], position[2] )
        puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again." unless success
<<<<<<< HEAD

      end
      @ships << current_ship
      if @ships.count == 5
        puts "HAL 9000 has placed its ships."
      end
    end

  end

end
=======
      end
      @ships << current_ship
    end
  end

end
>>>>>>> ac43400017f94182ba2f2cadda11aac19e17aa69
