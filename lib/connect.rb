require_relative 'player'
require_relative 'row'
require_relative 'board'
require "pry"

class Connect
  attr_reader :board
  def initialize
    new_board

  end

  def welcome
    puts "Welcome to Connect-4"
    puts
    puts "Player 1: What is your name?"
    p1 = gets.chomp
    
    puts "Player 2: What is your name?"
    p2 = gets.chomp

    while p1 == p2
      puts "Error: Player 2 chose another name"
      p2 = gets.chomp
    end

  end

  def new_board
    @board = Board.new

  end

  def print_board
    row_line = ""
    board.rows.each_with_index do |row, row_index|
      row_line += "|"
      row.row_array.each do |column, column_index|
        row_line += "   "
      end
      row_line += "|\n"
    end
    row_line += " "
    row_line += ("-" * 30)
    puts row_line
    puts "  A  B  C  D  E  F  G  H  I  J  "
  end
end

my_connect = Connect.new
my_connect.welcome
