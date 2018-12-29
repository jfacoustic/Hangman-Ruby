class Picker
  attr_reader :dictionary
  def initialize(args)
    @dictionary = args.fetch(:dictionary, nil)
  end
  def pick
    if !dictionary
      return "error"
    end
  end
end
