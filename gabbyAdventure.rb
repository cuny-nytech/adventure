def load_story(path)
	story= []
	File.open(path) do |file_handle|
		file_handle.each_line do |line|
			entry= {}
			id, choice, full, child1, child2 = line.split(': ')
			entry["id"]= id
			entry["choice"]= choice
			entry["full"]= full
			entry["child1"]=child1
			entry["child2"]=child2
			story.push(entry)
		end
	end
	story
end	

def nextline(id)
	p story[id].choice 
	p story[id].full  
end


s = load_story('adventure.txt')
print "\n Welcome to Gabriela Voll's Choose Your own adventure story \n"
cur=0; 

while( s[cur]["child1"].to_i >= 0)
	puts "\n#{cur} #{s[cur]["choice"]}"
	puts "#{s[cur]["full"]}" 
	puts "\nYou can either (1) #{ s[ s[cur]["child1"].to_i ]["choice"] }"
	puts "or you can (2) #{ s[ s[cur]["child2"].to_i ]["choice"] }"
	puts "please type a 1 or a 2"
	answer= gets.chomp
	while (answer != "1" )&&(answer != "2") do
		puts "\n\nYou didnt give me a valid next choice please try again, a 1 or a 2 please"
		answer= gets.chomp
	end 
	if answer == "1" 
		cur=s[cur]["child1"].to_i
		puts "you choose #{cur}"
	else
		cur=s[cur]["child2"].to_i
		puts "you choose #{cur}"
	end
end

puts "\n #{s[cur]["choice"]}"
puts "#{s[cur]["full"]}" 
puts "Game Over"
