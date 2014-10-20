require 'asciiart'

# creates an adventure game bases on dr who
class DrWhoAdv
  attr_accessor :doctorArray, :companionArray, :evil_creatureArray, :eraArray,
                :doctor, :companion, :evil_creature

  def initialize
    self.doctorArray  =  ['Christopher Eccleston',
                          'David Tennant', 'Matt Smith', 'Peter Capaldi']
    self.companionArray  =  ['Captain Jack', 'Brigadier', 'Mickey', 'Amy Pond',
                             'Donna Noble', 'Sarah Jane', 'K9']
    self.evil_creatureArray  =  %w(Slitheen, Dalek)
  end

  def choose_doctor
    puts 'Which doctor do you want to travel with? '

    index = [0, 1, 2, 3]
    index.each { |i| puts "#{i} #{doctorArray[i]}" }
    # for i in 0...doctorArray.length
    #  puts "#{i} #{doctorArray[i]}"
    # end

    # index = 0
    # doctorArray.each {|x| puts index.to_s + x; index++ }
    puts 'Enter the number here: '
    doctor  =  gets.to_i
    puts "You have chosen to travel with  #{doctorArray[doctor]}"
  end

  def intro
    puts 'You are in the Tardis'
    # picture
    a  =  AsciiArt.new('tardis.jpeg')
    print a.to_ascii_art(width: 50)
    puts " and the Doctor is trying to travel into the far future to meet
with the Face of Bo, but to your surprise, the instruments say that you are in
present day England."
  end

  def intro2
    puts "You step out and find that you are in what seems to be a museum."

    puts "-Careful!-shouts the Doctor. -A Weeping Angel! Don't blink!-"

     puts "-But wait!- he says looking at it more carefully. -It's been frozen by a
temporal field.-"
  end

  def intro3
    puts "You realize that you have come to a museum--but a museum unlike any other
that you have been to before. A museum filled with a variety of temporally frozen aliens--
EVIL aliens!"

    puts "-But I'm getting life readings- the Doctor says, checking his sonic
screwdriver.-One of these creatures is alive-"

    puts "-And there it is!-

Around the corner comes a... "
  end

  def intro4
    index = [0,1]
    index.each{ |i|
      puts "#{i} #{evil_creatureArray[i]}"
    }

    # for i in 0...evil_creatureArray.length
    #  puts "#{i} #{evil_creatureArray[i]}"
    # end

    puts 'Enter the number of the creature here: '
    evil_creature  =  gets.to_i
    puts "-Oh no- says the Doctor. -It's a #{evil_creatureArray[evil_creature]}!"

    # puts "#{evil_creature}"
    if evil_creature  ==  0
      slitheen_adventure()
      slitheen_adventure2()

    else
      dalek_adventure()

    end
  end

  def slitheen_adventure
    a  =  AsciiArt.new('slitheen3.jpeg')
    print a.to_ascii_art(width: 70)

    puts "-We are the Slitheen.- says the creature -We
    have plans to sell your Earth for scrap

    And first we are going to kill you!-

    Your first reaction is to..."
  
    actions  =  ['0 run', '1 pick up one of the alien weapons from a museum display', '2 argue', '3 shriek loudly']
    actions.each { |x| puts x }

    actionIndex  =  gets.to_i

    if actionIndex  ==  1
      puts "You realize you don't know how to use it."

    elsif actionIndex  ==  2
      puts "You have decided to argue: You say -But the earth is beautiful place! How could you sell it for scrap!-
      But then the Slitheen lunges at you and you decide to stop arguing and run!"

    elsif actionIndex  ==  3
      puts 'Shrieking loudly will only get you so far! You decide to run.'
    end

    puts 'You start to run until you see a door to what looks like a kitchen. You run in and pick up..'

    kitchenstuff  =  ['0 a knife', '1 a pot of boiling water to toss', "2 a piece of cake to eat--after all if the
    Slitheen is going to get you, why die hungry?"]

    kitchenstuff.each { |x| puts x }

    kitchenIndex  =  gets.to_i

    if kitchenIndex  ==  0 || kitchenIndex  ==  1
      puts "The Doctor says - That won't help you against the Slitheeen."
    elsif kitchenIndex  ==  2
      puts "Hungry already? We've only been on the run for five minutes!"

    end
  end

  def slitheen_adventure2
    puts "The Doctor exclaims -I know! These aliens are very susceptible to acetic acid.
    That means something with vinegar.

    You grab..."

    foods  =  ['0 a jar of pickles', '1 a bottle of vinegar', '3 a roast chicken']
    foods.each { |x| puts x }

    foodIndex  =  gets.to_i

    if foodIndex  ==  3
      puts "The Doctor says - That chicken won't help you, unless you want a snack!- He hands you a jar of pickled onions."

    end

    puts "You throw the bottle at the Slitheen.

    It explodes in a mass of vinegary goo! Gross!

    You and the Doctor go back to the Tardis. Humanity saved again!"
end

  def dalek_adventure
    a  =  AsciiArt.new('dalek.jpeg')
    print a.to_ascii_art(width: 50)
  end
end

game  =  DrWhoAdv.new
game.choose_doctor
# add choose companion
game.intro
game.intro2
game.intro3
game.intro4
