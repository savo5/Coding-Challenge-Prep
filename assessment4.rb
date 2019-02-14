# Define a method that, given an array of numbers, returns another array with each of the argument's numbers multiplied by two. Do not modify the original array.
def array_times_two(arr)
  multiplied_array = []

  i = 0
  while i < arr.length
    multiplied_array.push(arr[i] * 2)
    i += 1
  end

  multiplied_array

end

# Define a method that, given an array of numbers, mulitplies each of its elemnets by two. This SHOULD mutate the original array!
def array_times_two!(arr)

  i = 0
  while i < arr.length
    arr[i] = arr[i] * 2
    i += 1
  end

  arr

end

# Define a method that substitutes all five-letter words in its argument with "#####" and returns the result. Do not consider punctuation.
# redact_five_letter_words("long longer longest longy") => "long longer longest #####"
def redact_five_letter_words(str)
  # convert string into an array
  # iterate through each element and get length of element
  # if lengeth is 5 then replace with #####

  str = str.split(" ")

  i = 0
  while i < str.length
    if str[i].length == 5
      str[i] = "#####"
    end
    i += 1
  end

  str.join(" ")

end

# Define a method that takes an array of pairs (two-element arrays) and returns the pair with the greatest sum.
# largest_pair([[-4,0],[-2,-1],[-3,2]]) => [-3,2]
# largest_pair([[1,0]]) => [1,0]
def largest_pair(pairs_array)
  # 1. iterate through each pair in array
  # 2. add the pair of numbers together
  # 3. store sum
  # 4. if sum is greater than stored sum, save index of those numbers
  #

  largest = pairs_arr.first

  pairs_arr.each_index do |idx|
    if largest[0] + largest[1] < pairs_arr[idx][0] + pairs_arr[idx][1]
      # reset the largest variable; we've found out otherwise!
      largest = pairs_arr[idx]
    end
  end

  largest


end
