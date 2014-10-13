
$introd = []
$levels = [{ "go out" => 1, "study" => 2, "relax" => 10 },{ "start over" => 0, "proceed" => 3 }, { "work" => 4, "study" => 5, "nap" => 8 },{ "start over" => 0, "union" => 6, "nap" => 7, "turn off phone" => 9}, {"start over" => 0}]
 

class Adventure

 	def initialize(arr)
 		$introd = arr 	
 	end

	def start()
		puts $introd[0].chomp('*')
		play_game
	end

	def play_game()
		no = 0
		while true
			choice = gets.chomp
			if $levels[no][choice] == 0
				puts $introd[0].chomp('*')
				no = 0		
				next
			elsif choice =="end"
				break
			elsif $levels[no][choice] == nil
				puts "Choice not available. Please make sure you type in the \nchoice as shown in paranthesis. Single quotes not needed"	
				next			
			end
			puts $introd[$levels[no][choice]].chomp('*')
			no+=1;
		end

	end

end

story_game = Adventure.new(File.readlines('story.txt', sep = '*'))
story_game.start


