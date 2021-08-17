require 'pry'

class String

  def sentence?
    self.chars.last == "." ? true : false
  end

  def question?
    self.chars.last == "?" ? true : false
  end

  def exclamation?
    self.chars.last == "!" ? true : false
  end

  def count_sentences
    self.split(/[\!\.\?]/).filter { |sentence| !sentence.empty? }.length
  end
end