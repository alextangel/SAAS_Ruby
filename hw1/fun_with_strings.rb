module FunWithStrings
  def palindrome?
    str = self.downcase.scan(/\w/)
    str == str.reverse
  end
  def count_words
    hash = Hash.new(0)
    self.scan(/\w+/).each { |pup| hash[pup.downcase] += 1 } 
    return hash
  end
  def anagram_groups 
    self.downcase.split.group_by {|pup| pup.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
