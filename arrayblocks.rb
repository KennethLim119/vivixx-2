class Cat
  attr_reader :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end
end

cats = [
  Cat.new('Purry', :black),
  Cat.new('Scratchy', :white),
  Cat.new('Feral', :fawn),
  Cat.new('Tiny', :fawn),
  Cat.new('Leo', :white)
]

#Pick only :white cats
white_cats = cats.select do |cat|
  cat.color == :white
#  puts "#{cats.name[0]}"
end

# => [ Cat('Scratchy, :white'), Cat('Leo', :white)]

# Pick only :white cats
white_cats = cats.select do |cat|
  cat_color == :white # true if color is :white, false if not
end

# Can also be written as
white_cats = cats.select { |cat| cat.color == :white }


cats = [ Cat.new('Purry', :black), Cat.new('Scratchy', :white), Cat.new('Feral', :fawn), Cat.new('Tiny', :fawn), Cat.new('Leo', :white)]

# Get corresponding color for each cat
all_cat_colors = cats.map {|cat| cat.color}
puts all_cat_colors
# => [ :black, :white, :fawn, :fawn, :white ]

# Filter out multiples by uniguing the colors
unique_cat_colors = all_cat_colors.unique_cat_colors
puts unique_cat_colors
# => [ :black, :white, :fawn ]

unique_cat_colors = cats.map { |cat| cat.color }.uniq

upcased_cat_names = cats.map {|name| cat.name.upcase }
