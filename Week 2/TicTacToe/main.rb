require_relative "Game"
game = Game.new
 until game.board.full? || game.board.win
	@board.display
	x = game.board.players[0].get_move
	y = gets.chomp.to_i
	game.board.place_move x, y, game.board.players[0].move
	game.board.display
	game.turn
end