def printStories(chapter)
  return chapter + 1
end

def printStoriesText(chapter)
  return (0...50).map { ('a'..'z').to_a[rand(chapter.to_i)] }.join
end

def getChapters(index)
  return "Chapter #{index}"
end

def chapterSelection(chapter)
  puts('You have selected ')
  puts(getChapters(chapter))
  print("Here is your Story \n")
  puts printStoriesText(chapter.to_i)
end

print('Please Select Chapter stories use numbers to indicate chapter number: ')
chapter = gets
chapterSelection(chapter)
continue = true


while continue ==  true
  print('Please Select Chapter stories use numbers to continue to the next story: ')
  chapter = gets
  chapterSelection(chapter)
  print('To continue, please type  {1, for continue}{0, for cancel}')
  go = gets
  if( go.to_i == 0 )
    continue = false
  end
end
