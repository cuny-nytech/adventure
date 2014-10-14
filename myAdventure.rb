def userIsDead
	puts 
	puts "You have just been killed."
end

def userEscaped
	puts
	puts "Congratulations! With no chance of survival, you have actually managed to escape, and be free!"
end

def guessTheNumberGame
	puts
	puts "Instructions:"
	puts "You have 3 tries to guess the number that the program has randomized from 1-5"
	puts "Choosing the wrong number will result in your death. But choosing the right number will result in victory."

	programNumber = rand(1..5)
	srand(programNumber)

	counter = 1
	while counter <= 3
		puts "Please enter a number from 1-5"
		userGuess = gets.chomp.to_i

		if userGuess == programNumber
			return true
		else
			puts "Wrong guess!"
		end
		counter += 1
	end
end

def guessTheNumberGameSecond
	puts
	puts "Instructions:"
	puts "You have 1 try to guess the number that the program has randomized from 1-10"
	puts "Choosing the wrong number will result in your death. But choosing the right number will result in victory."

	programNumber = rand(1..10)
	srand(programNumber)

	puts "Please enter a number from 1-10"
	userGuess = gets.chomp.to_i

	if userGuess == programNumber
		return true
	else
		return false;
	end
end

def deathDoor
	puts "Feeling like a boss, you have chosen to go through the door labeled Death"
	puts "Having opened the door, you realize that the doors were not labeled to trick you."
	puts "You have now walked in the guard breakroom, where there are 10 guards taking their break."

	if guessTheNumberGameSecond == true
		userEscaped
	else 
		userIsDead
	end
end

def freedomDoor
	userEscaped
end

def userChoseToFight
	puts
	puts "You slowly creep behind the guard, but unfortunately the guard manages to hear you creeping behind you."

	if guessTheNumberGame == true
		puts "Good job! You have successfully managed to kill the guard."
		continueStory
	else
		userIsDead
	end
end

def continueStory
	puts "Having killed the guard, you now walk towards the end of the long tunnel"
	puts "At the end of the tunnel, you come across two doors labeled: Death, and Freedom"
	puts "Which door do you choose?"
	puts "Hint: The doors may or may not be labeled in those letters to trick you."
	userDoorInput = gets.chomp
	userDoorInput.downcase!

	if userDoorInput == "death"
		deathDoor
	else
		freedomDoor
	end
end

puts "As you slowly begin to open your eyes, you start to realize that you have been taken as a prisoner by the ISIS."
puts "You glance around the room for options on what you could do to escape, but you only see a guard with a gun with his back towads you."
puts "You over-hear the guards saying that you are to be excuted in a few hours."
puts "You now have two options: You could either accept your fate and die, or you could try escaping"
puts "Will you fight? Or will you die?"
userFirstInput = gets.chomp
userFirstInput.downcase!

if userFirstInput == "fight"
	userChoseToFight
else
	userIsDead
end