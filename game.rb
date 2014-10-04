# This is main file for adventure game
#
# Slavisa Djukic <Slavisa.Djukic15@myhunter.cuny.edu>
# Sep. 27. 2014.

# apparently I need this bo be able to load files that are not in the default LOAD_PATH for ruby
$:.unshift File.dirname(__FILE__)

require 'yaml'
require 'location'
require 'player'
require 'item'


class Game
  
  attr_reader :name, :locations_list, :players_list, :no_players, :map_size, :items_list
  
  
  def initialize(name, conf_file_path)
    @name = name
    @locations_list = []
    @players_list = []
    @items_list = []
    load_data conf_file_path + "/locations.yaml"
    load_player conf_file_path + "/players.yaml"
    load_items conf_file_path + "/items.yaml"
    @map_size = @locations_list.size
    @no_players = @players_list.size
  end 
    
    
  def load_data file_path
    data = YAML.load_file file_path
    locations = data["Locations list"]
    locations.each {|l| @locations_list << Location.new(l) }
  end
  
  def load_player file_path
    data = YAML.load_file file_path
    players = data["Players list"]
    players.each do |p|  
      if p["Type"] == "NPC" 
        @players_list << NPC.new(p) 
      else
        puts "What is your name "
        name = gets.chomp
        @players_list << HumanPlayer.new(p, name)
      end
    end

  end

  def load_items file_path
    data = YAML.load_file file_path
    items = data["Items list"]
    items.each { |i| @items_list << Item.new(i) }
  end

  def get_new_direction
    puts "You can go in these directions #{@locations_list[@current_location].connections}."
    puts "Where do you want to go: "
    gets.chomp
  end


  def describe_location
    # know that human player is always first entry in players_list
    actions = []
    player = @players_list[0]
    loc = player.location.to_i
    puts @locations_list[loc].description
    if @locations_list[loc].items.size != 0
      puts "You can see #{@locations_list[loc].items} laying around " 
      actions << "Pick UP" 
    end
    actions.concat @locations_list[loc].connections.split(' ')
    actions << "Take Out"  if player.storage.size != 0
    actions.concat ["Drop", "Put Away"] if player.inHand 
    actions << "Quit"
    actions
  end
end
