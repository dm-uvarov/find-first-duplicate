def find_first_duplicate(arr)
  # type your code in here
  
  # return -1 fi array too short  
  return -1 unless arr.length > 1

  current_element = 0
  temporary_array = []

  while arr.length > 0 do 
    current_element =  arr.shift();
    
    if temporary_array.include?(current_element)

      return current_element
      break
    else 
      temporary_array << current_element
    end

  end
  
  # loop is ended and we not found duplicates
  return -1

end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1])

  puts "Expecting: 8"
  puts "=>", find_first_duplicate([52354,54,534,543,453,8,8,9,9])
  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# the task is: we have on input array with integers and we want find the first duplicate 
# and return it if there any duplicates otherwise return -1
#  in task no restrictions on using interna 
#  l ruby functions. so we can use find() for looking valuse through the array.
#  so alhorithm
#   there no restiction using destructive method on array so we can use it.

# 1. check if array not empty ar containjs only 1 element and return -1 if so.
# 2. using loop while until length of array is no less than 2( because if there only 1 element means no duplicates could be)
# 3. shift first element from array 
# 4. check if it is appears one more time ?
# 5. if so - return found value 
# 6. else continue loop

# it seams my alhorithm looks for the first double in array but task ask iterate each element 
# and compare current element with already taken elements from the array. 
# so I rewrite  alhprithm with additional array for uccured elements.

# 1. check if array not empty ar containjs only 1 element and return -1 if so.
# 2. using loop while until length of array is no less than 2( because if there only 1 element means no duplicates could be)
# 3. shift first element from income array and
# 4. check if shifted element appears in temporary array 
# 5. if so - return found value 
# 6. else continue loop
# 7. if nothing find return -1