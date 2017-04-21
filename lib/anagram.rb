require ('ruby-dictionary')

class String
dictionary = Dictionary.from_file('words/words.txt')
  define_method(:anagram?) do |input_2|
    word_1_arr = self.downcase().gsub(/[^a-z0-9]/,"").split("")
    word_2_arr = input_2.downcase().gsub(/[^a-z0-9]/,"").split("")
    if word_1_arr.sort == word_2_arr.sort
      true
    else
      false
    end
  end

  define_method(:palindrome?) do
    word_arr = self.downcase().gsub(/[^a-z0-9]/,"").split("")
    backward = []

    i = word_arr.length
    word_arr.length.times do
      backward.push(word_arr[i-1])
      i=i-1
    end
    if (word_arr<=>backward)==0
      true
    else
      false
    end
  end

  define_method(:word?) do |word2|
    if dictionary.exists?(self) && dictionary.exists?(word2)
      true
    else
      false
    end
  end

  # define_method(:check_all?) do |word2|
  #   if self.anagram?(word2) == true
  #     self.palindrome?
  #   else
  #     false
  #   end
  # end
  define_method(:check_all) do |word2|
    if self.word?(word2) == true
      # if its a word than check if its an anagram
        if self.anagram?(word2) == true
          if self.palindrome? == true
            result = "It's an anagram and a palindrome"
          else
            result = "It's just an anagram"
          end
        else
          if self.antigram?(word2) == true
            result = "It's an antigram"
          else
            result = "It's nothing"
          end
        end
    else
      result = "It's not a word"
    end
  end

  define_method(:antigram?) do |word2|
    word_1_arr = self.downcase().gsub(/[^a-z0-9]/,"").split("")
    word_2_arr = word2.downcase().gsub(/[^a-z0-9]/,"").split("")
    if word_1_arr.sort - word_2_arr.sort == []
      false
    else
      true
    end
  end

end
