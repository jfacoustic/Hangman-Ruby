class Guesser
  attr_reader :word
  def initialize(args)
    @word = args.fetch(:word, "word")
  end

  def guess(letter)
    if letter.length != 1
      return "error"
    elsif !(letter.match /[a-zA-Z]/)
      return "error"
    else
      if word.include? letter
        return true
      else
        return false
      end
    end
  end
end
