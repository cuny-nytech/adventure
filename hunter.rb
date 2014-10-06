# Game's Full Name: Mercenary Hunter
# Creator: AbdulHameed Ahmed
# Date: October 6th, 2014

puts "Prologue:"

5.times { puts "................................................................." }

puts <<PARAGRAPH
Greetings new apprentice, my name is Zero!!! 
We have recieved orders from the higher-ups to huntdown and kill Master Minato.
His last known location was on Mars, so we are heading their right now to gather
more intel. When we land on the planet, we are going to have to split up to cover more ground.
We will rendezvous at the manda space port in the captial city of Mos Debian.
Mercenaries are not liked on this planet so I'm only going to say this once,BE ON YOUR GUARD!!!! 
LETS MOVE OUT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
PARAGRAPH

$flag = true

def engage_mode()

   y_health = 100 # Your health
   e_health = 100 # Enemies health
   y_attack = 25  # Your attack power
   e_attack = 25  # Enemy's attack power

   while(y_health > 0 && e_health > 0)
      puts "Commencing Attack!"
      tmp = rand(1..2)
      srand(tmp)
      if(tmp == 1)
        puts "Your attack landed successfully!"
        e_health -= y_attack
        status_mode(y_health, e_health)
      elsif(tmp == 2)
        puts "Enemy successfully landed a blow"
        y_health -= e_attack
        status_mode(y_health, e_health)
      end
   end

   if(y_health == 0)
     puts "\nGAME OVER!!!"
     $flag = false
   else
     puts "You have successfully defeated the enemy!!!"
     $flag = true
   end
end

def status_mode(my_health, enemy_health)
   puts "\nCurrent status:\n"
   puts "Health: #{my_health}, Enemy Health: #{enemy_health}"
end

def escape_mode()
   puts "Attempting to escape...."
   tmp = rand(1..2)
   srand(tmp)
   if(tmp == 1)
     puts "Got away safely"
   elsif(tmp == 2)
     puts "CANNOT ESCAPE....COMMENCE FIGHT"
     engage_mode()
   end
end

puts "\n\nLevel 1: Surviving Mars"

print "\n\nEncountered wild Tuskan... What will you do? (Fight or Run):"
answer = gets.chomp
answer.downcase!

case
when(answer == "fight")
    puts "Let the battle begin!"
    engage_mode()
when(answer == "run")
    escape_mode()
else
    puts "Battle Commence!"
    engage_mode()
end





while($flag == false)
   puts "You may have lost the battle but the war is for from over. TRY AGAIN"
   engage_mode()
end

puts "\n\nA mysterious voice begins to speak....\n"

puts <<PARAGRAPH
Impressive, most Impressive.
Perhaps you are the one I seek.
For now takes this blade. 
Consider it a gift from me to you.
I will see you shortly, until then farewell.......
PARAGRAPH

puts "\n\nObtained Heaven's Blade\n\n"
def display_items()
  puts "Current Held items:"
  puts "Heaven's Blade: Attack increased by 25"
  puts "........................................"
  puts "........................................"
  puts "........................................"
end

display_items()

puts "\n\nLevel 2: Arriving at manda port\n"

puts "apprentice: I wonder where Zero is?"
puts "Zero: It seem's like you got a new weapon!"
puts "aprrentice: Ah yes sir. (How did he just appear like that?)"
puts "Zero: Follow me. It seems I found someone who made contact with Master Minato"

puts ".................................................."
puts "Enter Kanamai"

puts "Kanamai: Welcome to my shop, How may I be of service?"
puts "Zero: I'm looking for information on someone you recently did business with"
puts "Kanamai: Who might this person be?"
puts "Zero: He goes by the name of Minato"
puts "Kanami: Ah Minato, yeah I remember him, great guy he gave me a pretty big tip"
puts "Zero: I need to know where he is heading?"
puts "Kanami: I'm sorry Mr. Zero but that information classfied"
puts "You see in this business we value one thing and that is discretion."
puts "I don't just go around and freely distribute my customer's information."

puts "apprentice: Surely their is something we can offer you?" 
puts "perhaps money?"
puts "Kanami: I have money, do you forget I own manda port."
puts "Kanami: Tell you what seems I'm a good sport why don't we play a guessing game?"
print "You think you are up for it(y/n): "
answer = gets.chomp
answer.downcase!

if(answer == 'y')
  puts "Let the guessing games begins!"
else
  puts "I'm afraid I cannot help you!"
  puts "GAME OVER!!!"
end
