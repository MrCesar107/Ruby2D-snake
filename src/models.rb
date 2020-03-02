# frozen_string_literal: true

require_relative 'models/state'
require_relative 'models/snake'
require_relative 'models/coord'
require_relative 'models/food'
require_relative 'models/grid'
require_relative 'models/direction'

module Models # :nodoc:
  def self.initial_state
    Models::State.new(Snake.new([Coord.new(1, 1), Coord.new(0, 1)]),
                      Models::Food.new(4, 4),
                      Models::Grid.new(8, 12),
                      Models::Directions::DOWN)
  end
end
