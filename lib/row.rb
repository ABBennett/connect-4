require_relative 'player'
require "pry"

class Row
attr_reader :row_array
  def initialize
    @row_array = Array.new(10)

  end
end
