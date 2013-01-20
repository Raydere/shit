# raymoo learns objects

# BOOKMARK: page 56

class IIDXPlayer
  attr_reader :id, :djName, :danRank
  attr_accessor :danRank # OH GOD WHAT AM I DOING
  def initialize(id, djName, danRank)
    @id = id
    @djName = djName
    @danRank = danRank
  end
  def promote(newDanRank)
    @danRank = newDanRank
  end
  def danPrintableFormat
    danString = ""
    if @danRank > 0
      danString = "#{@danRank}-dan"
    elsif @danRank < 0
      danString = "#{-@danRank}-kyu"
    else
      danString = "--"
    end
    return danString
  end
  def to_s    
    "ID: #{@id}, DJ Name: #{@djName}, Rank: #{danPrintableFormat}"
  end
end

reimu = IIDXPlayer.new(43983017, "REIMU", 6)
p reimu

johoto = IIDXPlayer.new(40653091, "JK.356", 6)
p johoto

koishi = IIDXPlayer.new(49330652, "KOISHI", 6)
p koishi

sakuya = IIDXPlayer.new(41935859, "SAKUYA", -5)
p sakuya

puts "holy shit #{reimu.djName} cleared the Safari"
# reimu.promote(7)
reimu.danRank = 7
puts "#{reimu.djName} is now #{reimu.danPrintableFormat}"

puts reimu # reimu no