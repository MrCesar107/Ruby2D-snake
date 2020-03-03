# frozen_string_literal: true

require_relative '../models'

module Actions # :nodoc:
  def self.move_snake(state)
    # Verify if next tile is valid and if not
    # game ends, unless snake can move
    next_position = calc_next_position(state)
    if position_is_valid?(state, next_position)
      move_snake_to(state, next_position)
    else
      end_game(state)
    end
  end

  def self.calc_next_position(state)
    current_position = state.snake.positions.first

    case state.next_direction
    when Models::Directions::UP
      Models::Coord.new(current_position.row - 1, current_position.col)
    when Models::Directions::DOWN
      Models::Coord.new(current_position.row + 1, current_position.col)
    when Models::Directions::LEFT
      Models::Coord.new(current_position.row, current_position.col - 1)
    when Models::Directions::RIGHT
      Models::Coord.new(current_position.row, current_position.col + 1)
    end
  end

  def self.end_game(state)
    state.game_finished = true
    state
  end

  def self.move_snake_to(state, next_position)
    new_positions = [next_position] + state.snake.positions[0...-1]
    state.snake.positions = new_positions
    state
  end

  def self.position_is_valid?(state, position)
    is_invalid = ((position.row >= state.grid.rows ||
                   position.row.negative?) ||
                  (position.col.negative? || position.col >= state.grid.cols))
    return false if is_invalid

    !state.snake.positions.include?(position)
  end
end
