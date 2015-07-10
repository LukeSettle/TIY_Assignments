class HumanPlayer < Player
  def initialize  name = "Dave"
    super name
  end

  def get_ship_position length
     puts "#{@name}, where would you like to place a ship of length #{length}?"
     cords =  get_user_input
     puts "Across or Down?"
     axis = get_user_input
     x = @grid.x_of(cords)
     y = @grid.y_of(cords)
     [x, y, axis == "Across"]
   end

   def call_shot
    puts "#{name}, please enter the coordinates for your next shot (e.g. 'B10'):"
    hole = get_user_input
    x = @grid.x_of(hole) 
    y = @grid.x_of(hole)
    new_hole = Hole.new x, y
    new_hole.shot!
    return hole
   end
end
