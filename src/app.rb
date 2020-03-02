# frozen_string_literal: true

require_relative 'views/ruby_2d_view'
require_relative 'models'

view = View::Ruby2dView.new
initial_state = ::Models.initial_state
view.render(initial_state)
