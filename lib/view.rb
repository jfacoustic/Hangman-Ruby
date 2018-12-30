class View
  attr_reader  :img_dir, :img_header
  def initialize(args)
    @img_dir = args.fetch(:img_dir, "resources/")
    @img_header = args.fetch(:img_header, "h")
  end
  def getImg x
    image = ""
    File.open(img_dir + img_header + x.to_s + ".txt").each do |line|
      image += line
    end
    return image
  end
end
