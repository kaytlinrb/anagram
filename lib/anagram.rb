class String
  define_method(:anagram) do |word|
    sorted_input = self.downcase().delete("^a-z").split('').sort()
    sorted_word = word.downcase().delete("^a-z").split('').sort()
    reversed_word = word.downcase().delete("^a-z").reverse()
    user_input = self.downcase().delete("^a-z")

    if user_input.scan(/[aeiouy]/).count <1
      "not a real word"
    elsif (sorted_word  & sorted_input).empty?
      "antigram!"
    elsif user_input.downcase == reversed_word
      "palindromes!"
    elsif sorted_input == sorted_word
      "anagrams!"
    else
      "not an anagram, palindrome, or antigram"
    end
  end
end
