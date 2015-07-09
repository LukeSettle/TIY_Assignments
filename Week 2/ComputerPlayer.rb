# require_relative "error"
class ComputerPlayer < Player
  def initialize
    raise ArgumentError, "ComputerPlayer cannot be named...yet" if self.name != nil
    super "HAL 9000"
  end

  #To change
  def get_ship_position length
    x = 1
    y = 1
    while @grid.has_ship_on? x, y
      x += 1
      y += 1
      axis = [true ,false].sample
    end
    [x, y, axis]

  end

  def call_shot
    "A1"
  end

end
