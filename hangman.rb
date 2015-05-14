# display letters guessed

# progress of guessing

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

#    _
#  _|_|_
#   ( )
#   /|\
#    |
#   / \


# 1. Go through each letter in the word
#   2. if the letter guessed is in the word
#     3. output the letter
#   4. else
#     5. output underscore

# make this method work for any word
def display_guess_progress(letters_guessed)
  word = ["d", "i", "n", "o", "s", "a", "u", "r"]
  word.each do |l|
    if letters_guessed.include?(l)
      print l
      elsif print "_ "
    end
  end
end

# display_guess_progress(["a", "o"])

# MAIN LOOP
# draw everything
# ask for letter
# add letter to guesses
# increment body parts if letter is not in word
# exit loop if you have won or lost

word = ["d", "i", "n", "o", "s", "a", "u", "r"]

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
  display_guess_progress(guesses)
end

