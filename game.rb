# This is main file for adventure game
#
# Slavisa Djukic <Slavisa.Djukic15@myhunter.cuny.edu>
# Sep. 27. 2014.

# apparently I need this bo be able to load files that are not in the default LOAD_PATH for ruby
$:.unshift File.dirname(__FILE__)

require 'yaml'
require 'location'

class Game
  
  attr_reader :name, :locations_list
  
  @@locations_list = []  

  def initialize name
    @name = name
  end 
    
    
  def load_data file_path
    data = YAML.load_file file_path
    locations = data["Locations list"]
    locations.each {|l| @@locations_list << Location.new(l) }
  end
  
  
  def something
    puts @@locations_list[0].description
  end
end

game = Game.new(" ")
game.load_data "conf/locations.yaml"
game.something