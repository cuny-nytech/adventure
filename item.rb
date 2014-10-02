# File describing item class
#
# Slavisa Djukic <Slavisa.Djukic15@myhunter.cuny.edu>
# Oct. 1, 2014.

class Item

  attr_accessor :type, :attack, :defense, :weight

  def initialize args
    @type = args["Type"]
    @attack = args["Attack"]
    @defense = args["Defense"]
    @weight = args["Weight"]
  end

  def to_s 
    "Type " + @type + " Attack " + @attack.to_s + " Defense " + @defense.to_s + " Weight " + @weight.to_s
  end
end
