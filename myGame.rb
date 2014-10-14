def terminator()
	abort('You are dead!')
end

def choose()
	ans = gets.chomp
	while ans!= "1" and ans!= "2" and ans!= "3"
		puts "please enter a proper number"
		ans = gets.chomp
	end
	return ans.to_i
end
def rooftop()
	puts "You go up to the rooftop and lock the door."
	puts "what do you want to do?"
	puts "1. Make an S.O.S pattern using your clothes 2. Burn your clothes using the lighter in your pocket 3. There is no zombie on the ground! Let's JUMMMMMMMMMMP!"
	ans = choose
	if ans == 1
		puts "Your clothes are blowing away and the zombie come up find you!"
		terminator
	end
	if ans == 2
		puts "Forgot to tell you that it is 10m above the ground!!"
		terminator
	end
	puts "A helicopter finds you!"
	abort("Your are survived")	
end

def thirdflood()
	puts "There are three class rooms in this floor."
	puts "You can only go to one room because you don't have enough time!"
	puts "1. music classroom 2. Library 3. GYM"
	ans = choose
	if ans == 1
		puts "You find your music teacher! But a zombie music teacher"
		terminator
	end
	if ans == 2
		puts "Wow!!! You find the portal!!!"
		abort("You are survived!!")
	end
	puts  "You find nothing in the GYM and the zombie is approaching!"
	rooftop
end

def hallway()
	puts "The restroom is in front of you. Staircase is at the left side and elevator is at the right hand side."
	puts "Where do you run?"
	puts "1. restroom 2. staircase 3. elevator"
	ans = choose
	if ans == 1
		puts "It is a dead end! You have no way to flee!"
		terminator
	end
	if ans == 2
		thirdflood()
	end
	puts "Zombies are taking over this city! It is black out everywhere!"
	terminator
end

def school()
	puts "A group of zombie see you and they want some fresh meat!"
	puts "Where do you run?"
	puts "1. left 2. right 3. go back to the building"
	ans = choose
	if ans == 1 or ans == 2
		puts "You just sprain your leg. You can't run faster than zombie!"
		terminator
	end
	puts "You step back into the building."
	hallway()
end

def classroom()
	puts "You are in the classroom and a zombie is wandering outside of the room."
	puts "What do you going to do?"
	puts "1. Hide behind the table 2. Run from the back door 3. Jump out of the window"
	ans = choose
	if ans == 1
		puts "The zombie smells u out!"
		puts "You have to do something quickly!"
		puts "1. Try to kill the zombie 2. Run from the back door 3. Jump out of the window"
		ans = choose
		if ans == 1
			puts "You are bitten by the zombie"
			terminator
		end
	end
	if ans == 2
		hallway()
	end
	puts "You jump out from second floor and fall on the grass"
	school()	
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