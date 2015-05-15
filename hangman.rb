def draw_man(limbs)
  if limbs == 1
    puts "    _"
    puts "  _|_|_"
  elsif limbs == 2
    puts "    _"
    puts "  _|_|_"
    puts "   ( )"
  elsif limbs == 3
    puts "    _"
    puts "  _|_|_"
    puts "   ( )"
    puts "   /"
  elsif limbs == 4
    puts "    _"
    puts "  _|_|_"
    puts "   ( )"
    puts "   /|"
  elsif limbs == 5
    puts "    _"
    puts "  _|_|_"
    puts "   ( )"
    puts "   /|\\"
  elsif limbs == 6
    puts "    _"
    puts "  _|_|_"
    puts "   ( )"
    puts "   /|\\"
    puts "    |"
  elsif limbs == 7
    puts "    _"
    puts "  _|_|_"
    puts "   ( )"
    puts "   /|\\"
    puts "    |"
    puts "   /"
  elsif limbs == 8
    puts "    _"
    puts "  _|_|_"
    puts "   ( )"
    puts "   /|\\"
    puts "    |"
    puts "   / \\"
  end
end

# Full Hangman:
#    _
#  _|_|_
#   ( )
#   /|\
#    |
#   / \

def display_guess_progress(word, letters_guessed)
  word.each do |l|
    if letters_guessed.include?(l)
      print l
      elsif print "_ "
    end
  end
end

word = ["p","n","e","u","m","o","n","o","u","l","t","r","a","m","i","c","r","s","c","o","p","i","c","s","i","l","i","c","o","v","o","l","c","a","n","o","c","o","n","i","o","i","s"]

bad_guesses = 0

guesses = []

while 0 == 0
  puts "\nGuess a letter"
  letter = gets.chomp
  guesses.unshift(letter)
  puts "Guesses: " + guesses.to_s
  if !word.include?(letter)
    bad_guesses = bad_guesses + 1
  end
  draw_man(bad_guesses)
  display_guess_progress(word, guesses)
end

# Win Condition
all_letters_in_word = true

word.each do |letter|
  if guesses.include?(letter)
    puts all_letters_in_word
    puts "You Win!"
  end
end

# Lose Condition
if bad_guesses >= 8
  puts "You Lose!"
end
