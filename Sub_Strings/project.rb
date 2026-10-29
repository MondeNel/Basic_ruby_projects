dictionary = ["below", "down", "go", "going", "horn", "how", "howdy",
              "it", "i", "low", "own", "part", "partner", "sit"]

=begin

Look at each word in the dictionary.
Make the message and dictionary word lowercase so capital letters do not matter.
Count how many times that dictionary word appears anywhere in the message.
If it appears at least once, save the word and its count in a hash.
Return the hash when all dictionary words have been checked.

For example, with the message "below":

"below" appears 1 time.
"low" appears 1 time.
The other dictionary words do not appear.

The result is:
{"below"=>1, "low"=>1}

=end

def substrings(word, dictionary)
  # Make the message lowercase so "Howdy" can match "how".
  word = word.downcase

  # This hash will hold the words we find and how many times we find them.
  matches = {}

  # Check each dictionary word, one at a time.
  dictionary.each do |substring|
    # Make this dictionary word lowercase too.
    substring = substring.downcase

    # Count how many times this word appears in the message.
    count = word.scan(substring).length

    # Only save the word if we found it at least once.
    if count > 0
      matches[substring] = count
    end
  end

  # Return the hash of found words and their counts.
  matches
end

p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)

=begin

In the second message, "how" is found in "Howdy" and "How's", so its count is 2.
"it" is found in "sit" and "it", so its count is 2.
The method checks every dictionary word and stores only the ones it finds.

=end