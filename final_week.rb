# This is the final_week adventure game.
class Adventure
  attr_accessor :introd, :levels
  def initialize(arr)
    @introd = arr
    @levels = Array.new(5) { Hash.new }
    @levels[0] = { 'go out' => 1, 'study' => 2, 'relax' => 10 }
    @levels[1] = { 'start over' => 0, 'proceed' => 3 }
    @levels[2] = { 'work' => 4, 'study' => 5, 'nap' => 8 }
    @levels[3] = { 'start over' => 0, 'union' => 6, 'nap' => 7, 'turnoff' => 9 }
    @levels[4] = { 'start over' => 0 }
  end

  def start
    puts introd[0].chomp('*')
    play_game
  end

  def start_over
    puts introd[0].chomp('*')
  end

  def game_loop(choice, no)
    while choice != 'end'
      if levels[no][choice] == 0 then no = start_over.to_i
      elsif choice == 'end' then break
      elsif levels[no][choice].nil?; puts 'Choice N/A.Type as shown in ()'
      else
        puts introd[levels[no][choice]].chomp('*')
        no += 1
      end
      choice = gets.chomp
    end
  end

  def play_game
    no = 0
    choice = gets.chomp
    game_loop(choice, no)
  end
end
story_game = Adventure.new(File.readlines('story.txt', '*'))
story_game.start
