def sum(array)
  a=0
  if array.empty?
    return 0
  else
    array.each{|x| a+=x}
    return a
  end
end

def max_2_sum(array)
  if array.empty?
    return 0
  elsif array.length == 1
    return array[0]
  else
    array = array.sort()
    return array[-1]+array[-2]
  end
end

def sum_to_n?(array, n)
  if array.empty? || array.length==1
    return false
  else
    array = array.uniq
    array.each_with_index{|x, index| array[index+1..array.size-1].each{|y| if x+y == n
    return true
    end}}
    return false
  end
end