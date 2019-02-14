# A "slippery number" has 3 as a factor or has 5 as a factor, but not both. 6 is a slippery, but 30 is not. Define a method that returns a boolean indicating whether its argument is slippery.
def is_slippery?(n)
  if n % 3 == 0 and n % 5 == 0
    false
  elsif n % 3 == 0 or n % 5 == 0
    true
  end

end

# Write a method that, given an integer n, returns an array of the first n slippery numbers.
# slippery_numbers(7) => [3, 5, 6, 9, 10, 12, 18]

def slippery_numbers(n)
  # create empty array filled with slippery numbers
  # add slippery numbers to the array until the array length = n

  slippery_numbers = []

  i = 3
  while slippery_numbers.length < n
    if is_slippery?(i)
      slippery_numbers.push(i)
    end
    i += 1
  end

  slippery_numbers

end

# Define a method, #e_words(str), that accepts a string as an argument. Your method return the number of words in the string that end with the letter "e".
# e_words("tree") => 1
# e_words("Let be be finale of seem.") => 3
def e_words(str)
  count = 0

  words = str.split(" ")

  i = 0
  while i < words.length
    word = words[i]

    last_letter = word[-1]

    if last_letter == "e"
      count += 1
    end

    i += 1
  end

  count
end

# The Fibonacci Sequence follows a simple rule: the next number in the sequence is the sum of the previous two. The sequence begins with [0, 1]. One computes the third number by summing the first and  second (0 + 1 == 1), yielding [0, 1, 1], one computes the fourth number by summing the second and the third, yielding [0, 1, 1, 2], and so on.
# Define a method, #fibs, that accepts an integer as an argument. The method should return an array of the first n Fibonacci numbers.
# fibs(1) => [0]
# fibs(6) => [0, 1, 1, 2, 3, 5]
def fibs(n)

  sequence = [0, 1]

  while sequence.length < n
    sequence << sequence[-1] + sequence[-2]
  end

  sequence

end
