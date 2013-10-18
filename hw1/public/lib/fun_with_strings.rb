module FunWithStrings
  def palindrome?
    self.to_s  =~ /\w+/
    words =  self.to_s
    (words.upcase == words.reverse.upcase) ? true : false
  end

  def count_words
    hash = self.downcase.lstrip.split(/\W+/)
    out = Hash.new(0)   # defaults
    hash.each { |w| out[w] += 1 }
    out
  end

  def anagram_groups
    hsh = self.downcase.lstrip.split(/\W+/)
    out = Hash.new(0)
    hsh.each do |wrd|
      out[wrd].scan(/./).sort.join
    end
    out
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
