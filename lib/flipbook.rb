class Flipbook
  def initialize(sentence)
    @sentence = sentence
  end

  def flip
    sentence_array = @sentence.split
    length = sentence_array.count
    flipped_sentence = length.times.map do |i|
      sentence_array[-i - 1]
    end
    flipped_sentence.join(" ")
  end


  def flip_no_split
    sentence_array = sentence_to_array
    flipped_sentence = sentence_array.count.times.map do |i|
      sentence_array[-i - 1]
    end
    flipped_sentence.join(" ")
  end

  private

  def sentence_to_array
    sentence_array = []
    word = ""
    @sentence.each_char do |char|
      unless char == " "
        word << char
      else
        sentence_array << word
        word = ""
      end
    end
    sentence_array << word
    return sentence_array
  end
end

