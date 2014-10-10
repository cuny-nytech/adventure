def print_stories(chapter)
  chapter + 1
end

def print_stories_text(chapter)
  (0...50).map { ('a'..'z').to_a[rand(chapter.to_i)] }.join
end

def get_chapters(index)
  "Chapter #{index}"
end

def chapter_selection(chapter)
  puts('You have selected ')
  puts(get_chapters(chapter))
  print("Here is your Story \n")
  puts print_stories_text(chapter.to_i)
end

print('Please Select Chapter stories use numbers to indicate chapter number: ')
chapter = gets
chapter_selection(chapter)
continue = true

while continue ==  true
  print('Select Chapter stories use numbers to continue to the next story: ')
  chapter = gets
  chapter_selection(chapter)
  print('To continue, please type  {1, for continue}{0, for cancel}')
  go = gets
  if go.to_i == 0
    continue = false
  end
end
