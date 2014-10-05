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


class World
  
  attr_reader :name, :locations_list, :players_list, :no_players, :map_size, :items_list, :actions
  
  
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
    @actions = []
    
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


  def get_actions
    
    actions = []
    player = @players_list[0]
    loc = player.location
    @locations_list[loc].connections.split(' ').each do |c|
      actions << {action: c}
    end
    
    if @locations_list[loc].items.size != 0
     
      temp = {}
      temp[:items] = []
      temp[:items].concat @locations_list[loc].items
      temp[:action] =  "Pick Up"
      actions << temp
    end
    
    if player.storage.size != 0
      temp = {}
      temp[:items] = []
      temp[:items].concat player.storage
      temp[:action] = "Take Out"
      actions << temp
    end
    
    if player.inHand
      actions << {action: "Drop"}
      actions << {action: "Put Away"}
    end
    
    actions << {action: "Quit"}
    actions
  end
  
end
