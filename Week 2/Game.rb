class Game
	attr_reader :game, :human, :computer
	def initialize human, computer
		@game = game
		@human = human
		@computer = computer
	end

	def welcome
		puts "Welcome, #{human.name} and HAL 9000!\nIt's time to play Battleship."
	end

	def place_ships
		human.place_ships([2, 3, 3, 4, 5])
		computer.place_ships([2, 3, 3, 4, 5])
	end

	def display_status
		puts "SHOTS TAKEN"
		human.grid.display_shots
		puts "YOUR BOARD"
		human.grid.display
	end
end