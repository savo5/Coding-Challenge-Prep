# Define a method that returns a boolean indicating whether its argument is a palindrome.
def palindrome?(str)
  reverse = ""

  i = 0
  while i < str.length
    reverse = str[i] + reverse
    i += 1
  end

  if reverse == str
    return true
  else
    return false
  end
end

# Define a method, boolean_to_binary(arr), that accepts an array of booleans as an argument. Your method should convert the array into a string of 1's (for true values) and 0's (for false values) and return the result.
# boolean_to_binary([true]) => "1"
# boolean_to_binary([true, false, true]) => "101"
def boolean_to_binary(arr)

  i = 0
  while i < arr.length
    if arr[i] == true
      arr[i] = 1
    else
      arr[i] = 0
    end
    i += 1
  end

  arr.join("")

end

# Define a method that returns the third-largest element in an array. Assume the argument has at least three elements.
# third_greatest([5, 9, 3, 7, 7, 2, 10]) == 7
def third_largest(arr)
  arr = arr.sort
  arr[-3]
end

# Define a method that takes a number of minutes as its argument and returns a string formatted HH:MM. Assume the number of hours is always less than 99.
# time_conversion(90) => "01:30"
# time_conversion(0) => "00:00"
def time_conversion(mins)
  hours = (mins / 60)
  minutes = mins % 60

  if hours < 10
    hours = "0" + hours.to_s
  else
    hours = hours.to_s
  end

  if minutes < 10
    minutes = "0" + minutes.to_s
  else
    minutes = minutes.to_s
  end

  time = hours + ":" + minutes

  time

end
