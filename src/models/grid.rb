# frozen_string_literal: true

module Models
  # The grid of the game, you can think about it like a matrix of tiles that we
  # call coords.
  Grid = Struct.new(:rows, :cols)
end
