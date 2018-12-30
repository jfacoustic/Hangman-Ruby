class View
  attr_reader :current, :img_dir
  def initialize(args)
    @current = args.fetch(:current, 0)
    @img_dir = args.fetch(:img_dir, "../resources/")
  end
end
