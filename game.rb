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
require 'item'

include Curses

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

  def perform_action(player, action)
    loc = player.location.to_i
    
    case action
    when 'w'
      change = -1
    when 'e'
      change = 1
    when 'n'
      change = 6
    when 's'
      change = -6
    when "Pick UP"
      locations_list[loc].items.each {|i| puts i }
      puts "Which item do you want to pick up"
      choice = gets.chomp.to_i
      player.storage << locations_list[loc].items[choice]
      locations_list[loc].items.delete(locations_list[loc].items[choice]) 
    when "Take Out"
      puts "You have "
      player.storage.each {|item| puts item }
      puts "Which one do you want to get out"
      choice = gets.chomp.to_i
      player.storage << player.inHand if player.inHand
      player.inHand = player.storage[choice]
      player.storage.delete(player.inHand)   
    when "Drop"
      locations_list[loc].items << player.inHand
      player.inHand = nil
    when "Put Away"
      player.storage << player.inHand
      player.inHand = nil
    end
    
    # check that player moved to the allowed location
    if change
      if 0 <= loc + change && loc + change < @map_size
        player.location = loc + change 
      end
    end
  end


  def curses_screen
    init_screen
    begin
      crmode
      #  show_message("Hit any key")
      setpos((lines - 5) / 2, (cols - 10) / 2)
      create_main_window
      refresh
      getch
      show_message("Hello, World!")
      refresh
      ensure
      close_screen
    end
  end
  
  def create_main_window
    x = 3
    y = 10
    setpos(x, y)
    top_line = '-' * 85 + ' ' * 5 + '-' * 30
    line = '|' + " " * 83 + '|' + ' ' * 5 + '|' + ' ' * 28 + '|'
    middle = '-' * 85 + ' ' * 5 + '|' + ' ' * 28 + '|'
    inner = ' ' * 90 + '|' + ' ' * 28 + '|'
    addstr(top_line)
    
    26.times do
      x += 1
      setpos(x, y)
      addstr(line)
    end

    x += 1
    setpos(x, y)
    addstr(middle)

    2.times do
      addstr(inner)
    end

    x += 1
    setpos(x, y)
    addstr(middle)

    3.times do
      x += 1
      setpos(x, y)
      addstr(line)
    end

    x += 1
    setpos(x, y)
    addstr(top_line)

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

  def get_item_char item
    result = ''
    @items_list.each do |i|
      result = i  if i.type == item
    end
    result
  end

end

game = Game.new("Nada 3", "conf")

human = game.players_list[0]

  
#while true

#  action = human.choose_action game.describe_location
#  if action == 'Quit'
#    break
#  end
#  game.perform_action(human, action)
#  puts "You have #{human.storage} in backpack" if human.storage.size != 0
#  puts "You are holding #{human.inHand} in hands." if human.inHand
#  puts "---------------------------------------------------"

#end

#puts "Good Bye!"

game.curses_screen
