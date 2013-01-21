require 'csv'
require_relative 'iidx_player'

class CsvReader
  attr_reader :players
  def initialize
    @players = []
  end
  
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @players << IIDXPlayer.new(row["ID"], row["DJ Name"], row["Dan Rank"].to_i)
    end
  end
  
  def display_all
    data = ""
    players.each do |player|
      data += "#{player}\n"
    end
  end
end