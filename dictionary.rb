WORDS = {
  'file': 'document',
  'output': 'result'
}

def search 
  print "Enter the word to search:"
  word = gets.chomp
  is_word_already_available = WORDS.has_key?(word.to_sym)
  if !is_word_already_available
    "The word #{word} not exists"
  end
  meaning = WORDS[word.to_sym]
  puts "The meaning of #{word} is #{meaning}"
  
end

def add
  print "Enter a new word:"
  new_word = gets.chomp
  is_word_already_available = WORDS.has_key?(new_word.to_sym)
  if  is_word_already_available
    puts "the word #{new_word} already exists!"
  else 
    print "Enter the meaning:"
    meaning = gets.chomp
    WORDS[new_word.to_sym] = meaning.to_s
    puts "new word #{new_word} added successfully!"
  end
end

def delete 
  print "Enter a word to be deleted:"
  d_word = gets.chomp
  is_word_already_available = WORDS.has_key?(d_word.to_sym)
  if !is_word_already_available
    puts "The word #{d_word} does not exist!"
  else
    WORDS.delete(d_word)
    puts "the word  #{d_word} is removed from the dictionary!"
  end
end

def update
  print "enter a word to be updated: "
  word = gets.chomp.to_sym
  is_word_already_available = WORDS.has_key?(word.to_sym)
  if !is_word_already_available
    puts "The word #{word} does not exist!"
  else 
    print "enter new meaning: "
    new_meaning = gets.chomp
    WORDS[word] = new_meaning
    puts "the word #{word} is updated!"
  end
end


def dictionary 
  puts "Dictionary"
  puts "Enter 1 to search a word"
  puts "Enter 2 to add a word"
  puts "Enter 3 to delete a word"
  puts "Enter 4 to update a word"
  puts "Enter 5 to view all the words"
  puts "Enter 6 to exit"
  input = gets.chomp
  
  return if input == "6"
  if input == "1"
    search
  elsif input == "2"
    add
  elsif input == "3"
    delete
  elsif input == "4"
    update
  elsif input == "5"
    puts WORDS
  else
    puts "!! invalid entry !!"
  end
  dictionary
end
dictionary