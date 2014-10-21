
is_not_end_of_story = true
story_line = {
    opening: ['
                You are travelling a great distance to see your aunt when smoke starts to gush out of the hood.
                There is a secluded house just up ahead. You stop to ask for help. As you approach the door you
                notice there is a peculiar looking note taped to the door. Do you?',
                'A) Read it?', #point to read_it
                'B) Ignore it and just knock?'], #point to ignore_it

    read_it: ['
                You decide to read it. The note says, "Beware! Evil Lives Here!" Do You?',
                'A) Take heed to the note and jet out of there?', #point to take_heed
                'B) Ignore the note and knock anyway?'], #point to ignore_it

    ignore_it: ['
                You decided to ignore the note, and just knock. A sweet looking old lady answers the door and invites
                you to come in. Do You?',
                'A) Just tell her you need help?', #point to need_help
                'B) Take her up on her offer and come in?' #point to come_in
                ],

    take_heed: ['
                You decide to leave in hopes that there is another house close by.
                You soon realize that there are no more houses for miles. Do you?',
                'A) Go back and take your chances with the creepy lil\' house with the note?',#point to ignore_it
                'B) Keep walking, because you\'re not much of a risk taker?'], #point to keep_walking

    need_help: ['
                You politely decline her offer to come in and ask if she could call 911 for you.
                The old lady says that she cannot see very well, and only uses her telephone to receive
                calls, not to make them. She says she would be glad to let you use the phone, but it is
                in her basement and you will have to come in. Do you?',
                'A) Throw caution to the wind and accept her offer to use her telephone', #point to come_in
                'B) Say no thank you, and leave in hopes of finding a less secluded house somewhere else'], #point to take_heed

    come_in: ['
                You decide to go in, despite your better instincts. The inside of the home looks very charming.
                The old lady offers you a piece of lemon pie. Do you?',
                'A) Accept the lemon pie?', #point to accept_pie
                'B) Say no, just show me where the telephone is please!'],#points to telephone_please

    keep_walking: ['
                  You decide the risk is not worth taking and you go on your way. Along the way, you notice
                  a little old lady standing in the middle of the street. Do you?',
                  'A) approach her and ask her why she is standing in the middle of the street?',#point to approach_her
                  'B) Ignore her, you\'ve got more important things to worry about?' ], #point to ignore_her

    accept_pie: ['
                  You accept her offer to have a piece of pie. The old lady watches intently as you eat.
                  You smile awkwardly and swallow a very small piece. The room begins to spin and suddenly
                  you pass out. You awaken in her basement tied to a pole. The old lady approaches. Do you?',
                  'A) Say, "Why are you doing this?"', #point to say_why?
                  'B) Cry, hoping for sympathy?'], #point to cry

    telephone_please: ['
                      The old lady directs you towards the basement. You hesitantly go down the creeky stairs.
                      Suddenly you see a green fog begin to fill up the room. You race for the door, but the old lady
                      locked it before you reached the top of the stairs. The green fog begins to dissipate as you lose
                      consciousness. You awaken only to realize that you have been tied to a pole in her basement. The
                      old lady approaches. Do you? '], #point to accept_pie[1], accept_pie[2]

    approach_her: ['
                  You approach the old lady and ask why she is standing in the middle of the street? She says she is lost,
                  and has poor vision. She asks you to help her find her way home. She says she lives in a little old house
                  somewhere nearby. You realize this is the house you just left. Do you?',
                  'A) Ditch the old lady and say, because you\'ve got more important things to worry about?"', #point to ignore_her
                  'B) Help the old lady because you feel sorry for her?'], #point to help_her

    ignore_her:   ['
                  You feel bad for the old lady, but are already kinda creeped out by the note on the door so, you
                  keep walking. You get about a quarter mile further down the road, when you see her again. You get
                  scared and start to go the other way, when you see her again. Everywhere you turn the old lady is
                  standing there looking directly at you. You realize you can\'t escape her. The further you walk, the
                  closer she gets to you in every direction. You are soon overtaken by the old ladies. They drag you to
                  the creepy little house and tie you to a pole in the basement. Do you?'],
                  #point to accept_pie[1], accept_pie[2]

    say_why?:     ['
                  The old lady explains that she is lonely. She just wants someone to keep her company. She says
                  she doesn\'t mean any harm, but this is the only way she has anyone to talk to. She says she will
                  give you just one chance to escape. She presents you with two boxes. Both contain your fate. Do you?',
                  'A) Choose Box 1',
                  'B) Choose Box 2'],

    cry:          ['
                   You begin to weep as the old lady approaches. She smiles sweetly and begins to lick the tears
                   flowing from your eyes. She says she enjoys the taste of misery. However, she also enjoys a good
                   game. She says she will give you only one chance to escape. You must choose one of two boxes. Both
                   contain your fate. Do you?',
                   'A) Choose Box 1',
                   'B) Choose Box 2'], #point to box 2

    help_her:     ['
                  You take the old lady by the arm and begin to walk her to the old house up the road. You notice
                  that your skin is starting to itch really badly. You try to let her arm go long enough to scratch
                  it, but your hand is stuck to her arm. The harder pull away, the more you itch. The
                  sensation gets too intense to bare as you begin to shake wildly. You soon become so filled with with
                  anxiety and fear. Your body can no longer stand it when you pass out it the middle of the street. You
                  awaken in her basement tied to a pole. The old lady approaches. Do you? '], #point to accept_pie [1] [2]

    box_one:      ['
                  You chose box 1. The old lady\'s dimeanor changes drastically from a manical grin to one of great
                  despair. She drops the box on the floor near you. Her head droops in defeat as she begins to walk away.
                  You feel a sense of relief come over you, when suddenly, the old lady stops at the foot of the stairs
                  and begins to crescendo into a cackle. You open the box with your feet. On the inside is a knitted message
                  in a picture frame that reads, "WELCOME HOME" ~THE END...'],

    box_two:      ['
                  You chose box 2. The old lady\'s eyes grew as big as her head. She starts hissing and backing away.
                  You sense that there is something in this box that is scaring the old lady, so you hurredly scramble
                  to get it open with your feet. The top of the box pops off and a baby doll falls out. The old lady screams,
                  "Noooooooo!". The doll belonged to her only child that she murdered 20 years ago. The old lady had locked
                  herself away in solitude ever since. The spirit of the child began to emerge from the doll in the form
                  of a bright light. The old lady kneeled before the light and cried out, "Forgive me child, Forgive me!!"
                  The light reached down and touched the old lady on the cheek. Her face began to burn where the
                  child\'s hands touched. Soon the old lady became a pile of ashes. As soon as the old lady disintegrated,
                  the house began to slowly disappear. You find yourself sitting on the lawn where the old house use to be.
                  You hear someone calling your name. You hear your name for the third time, when suddenly you awake only
                  to realize that it was all a dream... ~THE END...']
}
chose = ''
puts story_line[:opening]  #INTRO
choice = gets.downcase.chomp
if choice == 'a'
  chose = story_line[:read_it]
elsif choice == 'b'
  chose = story_line[:ignore_it]
end

while is_not_end_of_story
  if chose == story_line[:read_it]  #READIT
    puts story_line[:read_it]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:take_heed]
    elsif choice == 'b'
      chose = story_line[:ignore_it]
    end
  end

  if chose == story_line[:ignore_it]  #IGNORE_IT
    puts story_line[:ignore_it]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:need_help]
    elsif choice == 'b'
      chose = story_line[:come_in]
    end
  end

  if chose == story_line[:take_heed]  #TAKE_HEED
    puts story_line[:take_heed]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:ignore_it]
    elsif choice == 'b'
      chose = story_line[:keep_walking]
    end
  end

  if chose == story_line[:need_help]  #NEED_HELP
    puts story_line[:need_help]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:come_in]
    elsif choice == 'b'
      chose = story_line[:take_heed]
    end
  end

  if chose == story_line[:come_in]  #COME_IN
    puts story_line[:come_in]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:accept_pie]
    elsif choice == 'b'
      chose = story_line[:telephone_please]
    end
  end

  if chose == story_line[:keep_walking]  #KEEP_WALKING
    puts story_line[:keep_walking]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:approach_her]
    elsif choice == 'b'
      chose = story_line[:ignore_her]
    end
  end

  if chose == story_line[:accept_pie]  #ACCEPT_PIE
    puts story_line[:accept_pie]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:say_why?]
    elsif choice == 'b'
      chose = story_line[:cry]
    end
  end

  if chose == story_line[:telephone_please]  #TELEPHONE_PLEASE
    puts story_line[:telephone_please]
    puts story_line[:accept_pie][1]
    puts story_line[:accept_pie][2]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:say_why?]
    elsif choice == 'b'
      chose = story_line[:cry]
    end
  end

  if chose == story_line[:approach_her]  #APPROACH_HER
    puts story_line[:approach_her]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:ignore_her]
    elsif choice == 'b'
      chose = story_line[:help_her]
    end
  end

  if chose == story_line[:ignore_her]  #IGNORE_HER
    puts story_line[:ignore_her]
    puts story_line[:accept_pie][1]
    puts story_line[:accept_pie][2]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:say_why?]
    elsif choice == 'b'
      chose = story_line[:cry]
    end
  end

  if chose == story_line[:say_why?]  #SAY_WHY?
    puts story_line[:say_why?]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:box_one]
    elsif choice == 'b'
      chose = story_line[:box_two]
    end
  end

  if chose == story_line[:cry]  #CRY
    puts story_line[:cry]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:box_one]
    elsif choice == 'b'
      chose = story_line[:box_two]
    end
  end

  if chose == story_line[:help_her]  #HELP_HER
    puts story_line[:help_her]
    puts story_line[:accept_pie][1]
    puts story_line[:accept_pie][2]
    choice = gets.downcase.chomp
    if choice == 'a'
      chose = story_line[:box_one]
    elsif choice == 'b'
      chose = story_line[:box_two]
    end
  end

  if chose == story_line[:box_one]  #BOX_ONE
    puts story_line[:box_one]
    is_not_end_of_story = false
  end

  if chose == story_line[:box_two]  #BOX_TWO
    puts story_line[:box_two]
    is_not_end_of_story = false
  end

end




