# File that implements Player class
#
# Slavisa Djukic <Slavisa.Djukic15@myhunter.cuny.edu>
# Sep. 30, 2014.

require 'location'

class Player
 
  attr_reader :type, :strength, :weapon_skill, :endurance, :agility
  attr_accessor :location, :inHand, :storage, :health

  def initialize stat
    @type = stat["Type"]
    @location = stat["Location"]
    @strength = stat["Strength"]
    @weapon_skill = stat["Weapon Skill"]
    @endurance = stat["Endurance"]
    @agility = stat["Agility"]
    @health = stat["Health"]
    @inHand = stat["In Hand"]
    @storage = []
  end

  def add_item item
    @storage << item
  end

end

class NPC < Player

  def initialize stat
    super stat 
  end

  def choose_action actions 
    choice = Random.new
    actions[choice.rand(0..actions.size-1)]
  end

  def change_location new
    @location = new
  end

  def to_s
    "Location " + @location.to_s + " Strength " + @strength.to_s + " Weapon Skill " + @weapon_skill.to_s + " Endurance " + @endurance.to_s +
      " Agility " + @agility.to_s + " Health " + @health.to_s 
  end
end

class HumanPlayer < Player

  attr_reader :name

  def initialize(stat, name)
    super(stat)
    @name = name
  end

  def to_s
    "Location " + @location.to_s + " Strength " + @strength.to_s + " Weapon Skill " + @weapon_skill.to_s + " Endurance " + @endurance.to_s +
      " Agility " + @agility.to_s + " Health " + @health.to_s + " Name " + @name
  end

  def choose_action actions
    
    actions.each { |k, v| puts k }
    while true do
      puts "What is your choice: "
      puts "Possible actions are: " + actions.size.to_s
      choice = gets.chomp.to_i
      if choice > 0 and choice <= actions.size 
        break
      end
    end
    actions[choice-1]
  end

end
