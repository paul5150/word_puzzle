class String
  define_method(:word_puzzle) do
    vowels = ["a", "e", "i", "o", "u"]
    old_letters = self.split("")
    new_letters = []
    old_letters.each() do |letter|
      if vowels.include?(letter)
        new_letter = "-"
      else
        new_letter = letter
      end
      new_letters.push(new_letter)
    end
    new_letters.join()
  end
end
