require_relative 'row'
require "pry"

class Player
  attr_accessor :token, :name
  def initialize(name)
    @name = name
    @token = ""
  end
end
