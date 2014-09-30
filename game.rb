# This is main file for adventure game
#
# Slavisa Djukic <Slavisa.Djukic15@myhunter.cuny.edu>
# Sep. 27. 2014.

# apparently I need this bo be able to load files that are not in the default LOAD_PATH for ruby
$:.unshift File.dirname(__FILE__)

require 'yaml'
require 'location'
require 'curses'
require 'player'

include Curses

class Game
  
  attr_reader :name, :locations_list, :players_list, :no_players, :map_size
  
  
  def initialize(name, conf_file_path)
    @name = name
    @locations_list = []
    @players_list = []
    load_data conf_file_path + "/locations.yaml"
    load_player conf_file_path + "/players.yaml"
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
    players.each {|p| @players_list << Player.new(p) }
  end

  def get_new_direction
    puts "You can go in these directions #{@@locations_list[@@current_location].connections}."
    puts "Where do you want to go: "
    gets.chomp
  end


  def change_location
    direction = get_new_direction
    case direction
    when 'w'
      change = -1
    when 'e'
      change = 1
    when 'n'
      change = 6
    when 's'
      change = -6
    end
    
    if 0 < @@current_location + change && @@current_location + change < @map_size
      @@current_location += change 
    else
      @@current_location
    end
    
  end
  
  
  def curses_screen
    init_screen
    begin
      crmode
      #  show_message("Hit any key")
      setpos((lines - 5) / 2, (cols - 10) / 2)
      addstr("Hit any key")
      refresh
      getch
      show_message("Hello, World!")
      refresh
      ensure
      close_screen
    end
  end
  
  def show_message(message)
    width = message.length + 6
    win = Window.new(5, width,
               (lines - 5) / 2, (cols - width) / 2)
    win.box(?|, ?-)
    win.setpos(2, 3)
    win.addstr(message)
    win.refresh
    win.getch
    win.close
  end

  
end

game = Game.new("Nada 3", "conf")
game.players_list.each { |pl| puts pl }
puts game.no_players

#game.curses_screen
