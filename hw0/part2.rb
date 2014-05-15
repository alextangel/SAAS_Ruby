#!/usr/local/bin/ruby -w

def hello(name)
  return "Hello, " + name
end
  
  
def starts_with_consonant?(s)
  if(s.empty?)
    return false
  else
    if s[0] =~ /[[:alpha:]]/

      list = ['a', 'i', 'u', 'e', 'o']
      list.each{|x| if x == s[0].downcase
          return false
      end
      }
      return true
      
      else return false
    end
    
  end
end

def binary_multiple_of_4?(s)
  s = s.gsub(/[^01]/, '?')
  arr = s.chars.to_a
  if arr.include?('?')
    return false
  end
  return arr.last  == "0" && arr[arr.length-2] == "0"
end
