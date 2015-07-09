class Player
	attr_reader :grid, :name

  def initialize(name)
    @name = name
    @grid = Grid.new
	end
end
