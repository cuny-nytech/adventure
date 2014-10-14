HP = 100
def status()
	puts "HP:#{HP}"
end

def checker(hp)
	if hp <= 0
		abort('You are dead!')
	end
end

def classroom()
	puts 
	puts "You are in the classroom, and "
end

def gameStart()	
	puts
	puts "The end of the world..."
	puts
	print "Press *Enter* to continue..."
	gets.chomp
	classroom()
end

gameStart()