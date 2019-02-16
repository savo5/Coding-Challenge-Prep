# Define a method that capitalizes each word of its argument and returns the resulting string.
def capitalize_each_word(str)

  str = str.split(" ")

  i = 0
  while i < str.length
    str[i] = str[i].capitalize
    i += 1
  end

  str = str.join(" ")

end

# Define a method that takes an array of integers and returns an array of the square of each.
# compute_squares([1, 2, 3, 4]) => [1, 4, 9, 16]
# compute_squares([]) => []
def compute_squares(arr)

  square_array = []

  i = 0
  while i < arr.length
    square_array.push(arr[i] * arr[i])
    i += 1
  end

  square_array

end

# Define a method that returns a boolean indicating whether any two elements in the argument array sum to 0.
# two_sum_to_zero?([4, 2, 6]) => false
# two_sum_to_zero?([-2, 5, 12, -3, 2]) => true
def two_sum_to_zero?(arr)

  idx1 = 0
  while idx1 < arr.length
    idx2 = idx1 + 1
    while idx2 < arr.length
      if arr[idx1] + arr[idx2] == 0
        return true
      end
      idx2 += 1
    end
    idx1 += 1
  end

  false

end

# Define a method that returns the longest word in its argument.
def longest_word(str)

  str = str.split(" ")

  longest_word = str[0]

  i = 1
  while i < str.length
    if str[i].length > longest_word.length
      longest_word = str[i]
    end
    i += 1
  end

  return longest_word

end
