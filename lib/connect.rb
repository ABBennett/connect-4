require_relative 'player'
require_relative 'row'
require_relative 'board'
require "pry"

class Connect
  attr_reader :board, :player_1, :player_2
  def initialize
    new_board
    @player_1 = player_1
    @player_2 = player_2
  end

  def play
    welcome
    #loop until board is full or player wins
    turn(@player_1)
    turn(@player_2)
  end

  def welcome
    puts "Welcome to Connect-4"
    puts
    puts "Player 1: What is your name?"
    p1 = gets.chomp
    @player_1 = Player.new(p1)
    @player_1.token = "0"
    puts "Player 2: What is your name?"
    p2 = gets.chomp
    @player_2 = Player.new(p2)
    @player_2.token = "X"

    while p1 == p2
      puts "Error: Player 2 chose another name"
      p2 = gets.chomp
      player_2.name = p2
    end
  end

  def turn(player)
    puts "#{player.name}, it's your turn!"
    puts "Select a column"
    selected_column = gets.chomp
  end

  def place_token(selected_column)
    board.rows.each_with_index do |row, row_index|
      if row.row_array[selected_column].nil?
      else
        
      end
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
    binding.pry
  end
end

my_connect = Connect.new
my_connect.play
my_connect.print_board
