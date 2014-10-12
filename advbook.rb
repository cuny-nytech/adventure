require './story.rb'

page = $page_0

loop do
  puts "\e[H\e[2J"
  puts page.content
  if page.links.empty?
    puts "\nTo restart type r.\n\nTo quit type q"
    dec = $stdin.gets.chomp
    if dec == 'r'
      page = $page_0
      puts "\e[H\e[2J"
      puts page.content
    end
    abort('Goodbye!') if dec == 'q'
  end
  to_page = $stdin.gets.chomp
  abort('Goodbye!') if to_page == 'q'
  until page.links.include?(to_page.to_i)
    puts 'Please enter a valid page number.'
    to_page = $stdin.gets.chomp
  end
  page = $book[to_page.to_i]
end
