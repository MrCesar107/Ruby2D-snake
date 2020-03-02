# frozen_string_literal: true

require 'ruby2d'

module View
  # The view of the game
  class Ruby2dView
    attr_reader :pixel_size

    def initialize
      @pixel_size = 50
    end

    def render(state)
      extend Ruby2D::DSL

      set(title: 'Snake', width: pixel_size * state.grid.cols,
          height: pixel_size * state.grid.rows)

      render_food(state)
      render_snake(state)
      show
    end

    private

    def render_food(state)
      extend Ruby2D::DSL
      food = state.food
      draw(food.col * @pixel_size, food.row * @pixel_size, @pixel_size,
           'yellow')
    end

    def render_snake(state)
      extend Ruby2D::DSL
      snake = state.snake
      snake.positions.each do |position|
        draw(position.col * @pixel_size, position.row * @pixel_size, @pixel_size,
             'green')
      end
    end

    def draw(position_x, position_y, size, color)
      extend Ruby2D::DSL
      Square.new(x: position_x, y: position_y, size: size, color: color)
    end
  end
end
