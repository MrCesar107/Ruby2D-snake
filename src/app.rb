# frozen_string_literal: true

require_relative 'views/ruby_2d_view'
require_relative 'models'

class App
  def start
    view = View::Ruby2dView.new
    initial_state = ::Models.initial_state
    view.render(initial_state)
  end

  def init_timer
    loop do
      sleep 0.5
      # Trigger snake movement
    end
  end
end
