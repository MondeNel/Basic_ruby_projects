=begin

Look at one character at a time.
If it’s a letter, find its place in the alphabet.
Move forward 5 places. If you pass z, continue from a.
Keep uppercase letters uppercase.
Leave spaces and punctuation alone.
Put the characters back together.

For example:
(W) moves five places to B
(h) moves five places to m
(a) moves five places to f
(t) moves five places to y

(a) moves five places to f

(s) moves five places to x
(t) moves five places to y
(r) moves five places to w
(i) moves five places to n
(n) moves five places to s
(g) moves five places to l

the final result is = Bmfy f xywnsl!

=end

def caesar_cipher(string, shift) # string param = characters, shift param = the integer
  # Write the alphabet down so you can find each letter's place.
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  # There are 26 letters. This keeps the shift from going past 26.
  # The modulo operator gives us the reminder after the division
  shift = shift % 26

  # we look at the message one character at a time.
  string.chars.map do |char| # We use map because we want to change every character in the string and collect the changed characters into a new array.
    # Find this letter in our lowercase alphabet.
    # downcase lets us find both "a" and "A".
    letter_number = alphabet.index(char.downcase) # we use the index method to evaluates an object to find the position of a specific element

    # If it isn't a letter, such as a space or "!",
    # keep it just as it is.
    next char if letter_number.nil? # we use the next key word to skip the rest of the current iteration and immediately jump to the next one

    # Move forward through the alphabet by the shift amount.
    # If we go past "z", start again at "a".
    new_letter = alphabet[(letter_number + shift) % 26]

    # Keep capital letters capital.
    # Leave lowercase letters lowercase.
    if char == char.upcase
      new_letter.upcase
    else
      new_letter
    end
  end.join # Put all the changed characters back into one message.
end

puts caesar_cipher("What a string!", 5)