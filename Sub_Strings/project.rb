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

dictionary = ["below", # 0
              "down", # 1
              "go", # 2
              "going", # 3
              "horn", # 4
              "how", # 5
              "howdy", # 6
              "it", # 7
              "i", # 8
              "low", # 9
              "own", # 10
              "part", # 11
              "partner", # 12
              "sit"] # 13

=begin

The message is the text we are searching in.
The dictionary is a list of little words to look for.

We look for each dictionary word in the message.
If we find it, we write down the word and how many times it appears.
We keep doing that until we have checked every word.

For example, our message is "below".

The word "below" is in the message one time.
The word "low" is also in the message one time because it is part of "below".
The other dictionary words are not in the message.

So the answer is:
{"below"=>1, "low"=>1}

=end

p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)

=begin

In the second message, "how" is found in "Howdy" and "How's", so its count is 2.
"it" is found in "sit" and "it", so its count is 2.
The method checks every dictionary word and stores only the ones it finds.

=end