# Define a method that returns the sum of all the non-negative integers up to and including its argument.
# sum_to(3) => 6
def sum_to(int)
  sum = 0

  i = 1
  while i <= int
    sum += i
    i += 1
  end

  sum

end

# A magic number is a number whose digits, when added together, sum to 7, e.g., 34. Define a method that returns an array of the first n magic numbers. You may wish to write a helper method (magic_number?) that returns a boolean indicating whether a number is magic.
# magic_numbers(3) => [7, 16, 25]



def magic_number?(n)
  n = n.to_s.chars

  sum = 0
  i = 0
  while i < n.length
    sum += n[i].to_i
    i += 1
  end

  if sum == 7
    true
  else
    false
  end

end

def magic_numbers(n)

  array = []

  i = 1
  while array.length < n
    if magic_number?(i)
      array.push(i)
    end
    i += 1
  end

  array
end

# Define a method that given an array, returns another array of only the unique elements from the first. Do not use the built-in uniq method.
# uniq([5, 5, 5, 5]) => [5]
# uniq([1, 2, 1, 3, 3]) => [1, 2, 3]
def uniq(arr)
  unique = []

  idx = 0
  while idx < arr.length
    if !unique.include?(arr[idx])
      unique << arr[idx]
    end
    idx += 1
  end

  unique

end

# Define a method that receives two arrays as arguments and returns a new array of arguments unique among both arrays (but not necessarily within the array it occurs). Maintain original (intra- and inter-array) order.
# all_uniqs([1, 1, 3, 6], [2, 3, 6]) => [1, 2]
# all_uniqs([1, 2, 3], [1, 2, 3]) => []
def all_uniqs(arr1, arr2)
  unique = []

  arrays = arr1 + arr2
  arrays = arrays.uniq

  idx = 0
  while idx < arrays.length
    if !arr1.include?(arrays[idx]) || !arr2.include?(arrays[idx])
      unique << arrays[idx]
    end
    idx += 1
  end

  unique



end
