# Define a method that reverses the digits of its argument and returns the resulting number.
# reverse_digits(1738) => 8371
def reverse_digits(int)
  int.to_s.reverse.to_i
end

# Define a method, #pair_product?, that accepts two arguments: an array of integers and a target_product (an integer). The method returns a boolean indicating whether any pair of elements in the array multiplied together equals that product. You cannot multiply an element by itself. An element on its own is not a product.
# pair_product?([3, 1, 5], 15) => true
def pair_product?(arr, target_product)

  idx1 = 0
  while idx1 < arr.length
    idx2 = idx1 + 1
    while idx2 < arr.length
      if arr[idx1] * arr[idx2] == target_product
        return true
      end
      idx2 += 1
    end
    idx1 += 1
  end

  return false

end

# Define a method, #slice_between_vowels(word), that accepts a string as an argument. Your method should return the slice of the word between the first and last vowels of that word. Return an empty string if the word has less than 2 vowels.
# slice_between_vowels("serendipity") => "rendip"
# slice_between_vowels("train") => ""
# slice_between_vowels("dog") => ""
def slice_between_vowels(word)
  vowel_count = 0
  vowels = ["a", "e", "i", "o", "u"]

  idx = 0
  while idx < word.length
    if vowels.include?(word[idx])
      vowel_count += 1
    end
    idx += 1
  end

  first_vowel = nil
  last_vowel = nil

  if vowel_count >= 2
    idx = 0
    while first_vowel == nil
      if vowels.include?(word[idx])
        first_vowel = idx
      end
      idx += 1
    end
    idx2 = -1
    while last_vowel == nil
      if vowels.include?(word[idx2])
        last_vowel = idx2
      end
      idx2 -= 1
    end

    return word[first_vowel + 1 ... last_vowel]
  else
    return ""
  end

end
