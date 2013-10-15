module FunWithStrings
  def palindrome?
    # your code here
    self.to_s  =~ /\w+/
    words =  self.to_s

    (words.upcase == words.reverse.upcase) ? true : false
  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
