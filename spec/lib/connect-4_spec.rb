require_relative '../../lib/connect'

describe Player do
  describe ".new" do
    it "should be a class" do
      expect(Player.new("joe")).to be_a(Player)
    end
  end

  describe "#name" do
    it "should initialize with a name" do
      expect(Player.new("joe").name).to eq("joe")
    end
  end
end

describe Row do
  let(:row) {Row.new}
  describe ".new" do
    it "should be a Row" do
    expect(row).to be_a(Row)
    end

    it "should have a size of 10" do
      expect(row.row_array.size).to eq(10)
    end
    it "should have nil in each space" do
      expect(row.row_array[0].nil?).to eq(true)
    end
  end
end

describe Board do
  let(:board) {Board.new}
  describe "@rows" do
    it "should create ten rows by default" do
      expect(board.rows.size).to eq(10)
    end
  end
end
