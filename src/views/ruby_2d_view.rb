# frozen_string_literal: true

require 'ruby2d'

module View
  # The view of the game
  class Ruby2dView
    def initialize
    end

    def render(state)
      extend Ruby2D::DSL

      set(title: 'Snake', width: 600, height: 400)
      show
    end
  end
end
