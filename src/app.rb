# frozen_string_literal: true

require_relative 'views/ruby_2d_view'

view = View::Ruby2dView.new
initial_state = Models::init_state
view.render(nil)
