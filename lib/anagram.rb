class String
  define_method(:anagram) do |word|
    sorted_input = self.split('').sort()
    sorted_word = word.split('').sort()
    if sorted_input == sorted_word
      "anagrams!"
    end
  end
end
