def userChoseSleep()
	puts "\nBecause you have chosen to be lazy, and sleep 30mins extra instead of waking up early, we shall play a game."
	puts "Based on your answers, it will be determined whether you wake up on time, or not."
	puts "The name of our game is: Guess the Number!\n"

	if guessTheNumberGame == true
		puts "Since you have won Guess The Number!, you have successfully woken up at 7am!"
	else
		puts "Since you have lost Guess The Number!, you have woken up late, and missed your first day of class."
	end
end

def userChoseWakeUp
	puts "Because you have chosen to wake up early, you are ready to start your first day of class!"
end

def guessTheNumberGame
	puts 
	puts "Instructions:"
	puts "Guess The Number is a fairly simple game, where the user has 3 tries to guess the number that the game has chosen. The program will randomly choose a number from 1-5, and the user has 3 tries to guess the number."
	puts "Please note that the once the number has been chosen by the program, the number will not change."
	puts "Are you ready to play Guess The Number?"
	readyToPlayTheGame = gets.chomp
	readyToPlayTheGame.downcase!

	if readyToPlayTheGame == "yes"
		programNumber = rand(1..5)
		srand(programNumber)

		counter = 1
		while counter <= 3
			puts "Please enter a number from 1-5"
			userGuess = gets.chomp.to_i

			if userGuess == programNumber
				puts "Congratulations! You have successfully guessed the right number, and won Guess The Number game!\n"
				return true
			else
				puts "Wrong guess!"
			end
			counter += 1
		end
	else
		guessTheNumberGame
	end
end


puts "As you are sleeping peacefully in the comfort of your bed, you hear your alarm clock ringing. Begrudgingly, you start to force yourself up to turn off the alarm. To your surprise, the time is only 6.30am. You have a class at 9am, and you only need to wake up at 7am."
puts "You now have two choices: Either you could wake up 30mins early. Or you could risk sleeping 30mins more."
puts "What will you do? Sleep or wake up?"
sleepOrWakeUpInput = gets.chomp
sleepOrWakeUpInput.downcase!

if sleepOrWakeUpInput == "sleep"
	userChoseSleep
else
	userChoseWakeUp
end