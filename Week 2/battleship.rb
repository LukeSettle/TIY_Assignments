   require_relative "Player"
require_relative "HumanPlayer"
require_relative "ComputerPlayer"
require_relative "Ships"
require_relative "Grid"
require "pry"
ship1 = Ship.new(4)
ship1.place(2, 1, true)
ship1.covers?(2, 1)
ship1.covers?(3, 1)
ship1.covers?(4, 1)
binding.pry
ship1.covers?(5, 1)
ship1.covers?(1, 1)
ship1.covers?(6, 1)
ship1.covers?(4, 2)

# #main file

ship2 = Ship.new(4)
ship2.place(2, 2, false)
ship2.covers?(2, 1)
ship2.covers?(2, 2)
ship2.covers?(2, 3)
ship2.covers?(2, 4)
binding.pry
ship2.covers?(2, 5)
ship2.covers?(2, 6)
ship2.covers?(3, 2)


