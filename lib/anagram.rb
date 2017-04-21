
class String
  define_method(:anagram?) do |input_2|
    word_1_arr = self.downcase().gsub(/[^a-z0-9]/,"").split("")
    word_2_arr = input_2.downcase().gsub(/[^a-z0-9]/,"").split("")
    if word_1_arr.sort == word_2_arr.sort
      true
    else
      false
    end
  end
end
