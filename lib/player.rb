require_relative 'row'
require "pry"

class Player
  attr_reader :name
  def initialize(name)
    @name = name

  end
end
