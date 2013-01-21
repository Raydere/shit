# raymoo learns objects

# BOOKMARK: page 56

class IIDXPlayer
  attr_reader :id, :dj_name, :dan_rank
  # attr_accessor :dan_rank # OH GOD WHAT AM I DOING
  def initialize(id, dj_name, dan_rank)
    @id = id
    @dj_name = dj_name
    @dan_rank = dan_rank
  end
  def promote(newdan_rank)
    @dan_rank = newdan_rank
  end
  def dan_printable_format
    danString = ""
    if @dan_rank == 1
      danString = "Sho-dan"    
    elsif @dan_rank > 1
      danString = "#{@dan_rank}-dan"
    elsif @dan_rank < 0
      danString = "#{-@dan_rank}-kyu"         
    else
      danString = "--"
    end
    return danString
  end
  def to_s    
    "ID: #{@id}, DJ Name: #{@dj_name}, Rank: #{dan_printable_format}"
  end
end

=begin
reimu = IIDXPlayer.new(43983017, "REIMU", 6)
p reimu

johoto = IIDXPlayer.new(40653091, "JK.356", 6)
p johoto

koishi = IIDXPlayer.new(49330652, "KOISHI", 6)
p koishi

sakuya = IIDXPlayer.new(41935859, "SAKUYA", -5)
p sakuya

puts "holy shit #{reimu.dj_name} cleared the Safari"
# reimu.promote(7)
reimu.dan_rank = 7
puts "#{reimu.dj_name} is now #{reimu.dan_printable_format}"

puts reimu # reimu no
=end