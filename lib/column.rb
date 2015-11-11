require_relative 'player'
require "pry"

class Column
  attr_reader :letter

  def initialize(letter)
    @letter = letter

  end
end
