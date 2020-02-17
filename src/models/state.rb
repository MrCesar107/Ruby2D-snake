# frozen_string_literal: true

module Models
  # El game's state. It envolves all the events thar occurs during a game like
  # the position of the snake, the position of the food, etc.
  State = new Struct.new(snake, food, grid)
end
