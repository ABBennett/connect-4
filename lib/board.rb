require_relative 'row'
require_relative 'player'

class Board
  attr_reader :rows
  def initialize
    @rows = Array.new(10).map {Row.new}

  end
end
