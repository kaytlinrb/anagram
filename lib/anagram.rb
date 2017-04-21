class String
  define_method(:anagram) do |word|
    sorted_input = self.downcase().split('').sort()
    sorted_word = word.downcase().split('').sort()
    reversed_word =word.downcase().reverse()

    if self.scan(/[aeiouy]/).count <1
      "not a real word"
    elsif self.downcase == reversed_word
      "palindromes!"
    elsif sorted_input == sorted_word
      "anagrams!"
    end

  end
end
