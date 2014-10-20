dinner = [
  {
    "question" => "What protein will you cook?",
    "foods" => [
      { "name" => "Beef",       "isPaleo" => true,  "reason" => "Beef is totally paleo." },
      { "name" => "Wild boar",  "isPaleo" => true,  "reason" => "Wild boar is great!" },
      { "name" => "Tofu",       "isPaleo" => false, "reason" => "Soybeans are not paleo." },
      { "name" => "Pork belly", "isPaleo" => true,  "reason" => "Pork belly is delicious!" }
    ]
  },
  {
    "question" => "What carb will you have?",
    "foods" => [
      { "name" => "Rice",           "isPaleo" => false, "reason" => "Rice, and grains in general, are not paleo." },
      { "name" => "Bread",          "isPaleo" => false, "reason" => "Wheat is the worst!" },
      { "name" => "Sweet potatoes", "isPaleo" => true,  "reason" => "Sweet potatoes are super paleo." },
      { "name" => "Couscous",       "isPaleo" => false, "reason" => "Cousous is made from wheat and wheat is not paleo." }
    ]
  },
  {
    "question" => "What oil/fat will you cook with?",
    "foods" => [
      { "name" => "Canola oil",  "isPaleo" => false, "reason" => "Canola oil is technically not even food." },
      { "name" => "Olive oil",   "isPaleo" => true,  "reason" => "Olive oil is great!" },
      { "name" => "Coconut oil", "isPaleo" => true,  "reason" => "Coconut oil is ketogenic!" },
      { "name" => "Butter/ghee", "isPaleo" => true,  "reason" => "Butter/ghee is best!" }
    ]
  },
  {
    "question" => "What alcoholic drink will you have?",
    "foods" => [
      { "name" => "Tequila", "isPaleo" => true,  "reason" => "Tequila is made from agave which is okay." },
      { "name" => "Beer",    "isPaleo" => false, "reason" => "Beers are made from grains which are totally not paleo." },
      { "name" => "Wine",    "isPaleo" => true,  "reason" => "Wine is made from grapes which is okay." },
      { "name" => "Gin",     "isPaleo" => true,  "reason" => "Gin is made from juniper berries which is okay." }
    ]
  },
]

puts "---------------------------------------------------------------"
puts "You are inviting your girlfriend over for dinner and she's a paleo-tard. Your goal is to cook a meal that adheres to her diet dogma.\n\n"
puts "Chose from the following menu to see if you can make the right choices.\n\n"

dinner.each do |question|
  puts question["question"]

  question["foods"].each_with_index do |food, index|
    puts "\t#{index+1}. #{food['name']}"
  end
  
  choice = nil
  loop do
    input = gets.chomp
    if (input =~ /^[-+]?[0-9]*$/) then
      input = input.to_i - 1
      if (0 <= input && input < question["foods"].length) then
        choice = question["foods"][input]
        break      
      end 
    end
    puts "Invalid option"
  end

  if choice["isPaleo"] == false then
    puts "You lost! #{choice['reason']}"
    puts "Game over; exiting...\n\n"
    exit
  else
    puts "Good choice!\n\n"
  end
end

puts "Congratulations! You have impressed your girlfriend!"
