require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences

    # binding.pry
    sentence_split = self.split(/[.!?]/).delete_if do |sentence|
      sentence.size < 2
    end
    sentence_split.count
  end
end