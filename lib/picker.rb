class Picker
  attr_reader :dictionary
  def initialize(args)
    @dictionary = args.fetch(:dictionary, nil)
  end
  def pick
    if !dictionary
      return "error"
    else
      return dictionary[Random.rand(dictionary.length)]
    end
  end
end
