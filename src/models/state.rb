# frozen_string_literal: true

# The game's state. It envolves all the events thar occurs during a game like
# the position of the snake, the position of the food, etc.
module Models
  State = Struct.new(:snake, :food, :grid, :next_direction)
end
