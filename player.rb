# File that implements Player class
#
# Slavisa Djukic <Slavisa.Djukic15@myhunter.cuny.edu>
# Sep. 30, 2014.

class Player
 
  attr_reader :location, :strength, :weapon_skill, :endurance, :agility, :health, :storage, :carrying

  def initialize(stat)
    @location = stat[:location]
    @strength = stat["strength"]
    @weapon_skill = stat["weapon_skill"]
    @endurance = stat["endurance"]
    @agility = stat["agility"]
    @health = stat["health"]
    @storage = []
    @carrying = []
  end

  def add_item item
    @storage << item
  end

end

class NPC < Player

  def choose_action actions 
    choice = Random.new
    actions[choice.rand(0..actions.size-1)]
  end

  def change_location new
    @location = new
  end

end

class HumanPlayer < Player

  attr_reader :name

  def initialize(stat, name)
    super(stat)
    @name = name
  end

end
