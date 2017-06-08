# Parent Class

# Would be saved as "Building.rb"
class Building
  attr_accessor :name, :height, :width, :length
  def initialize(name, height, width, length)
    @name = name
    @height, @width, @length = height, width, length
  end

  def floor_area
    @width * @length
  end
end

## Child Classes / Subclasses

# Would be saved as "Castle.rb"
class Castle < Building
  # Custome Attribute
  attr_accessor :butler

  # Custome Method
  # Example of a Ruby Convention - Naming Methods
  def has_a_butler?
    # Will return "true" if the condition below is true
    @butler != nil
  end

  def floor_area
    # @width * @length + 300
    super + 300 # 'super' calls 'floor_area' of 'Building'
  end

  # "self" refers to the Class in question
  def self.categories
    ['Medieval', 'Norman', 'Ancient']
  end
end


# Would be saved as "House.rb"
class House < Building
end

## test

some_castle = Castle.new('Tower of London', 27, 100, 480)

# p some_castle.has_a_butler?
# some_castle.butler = "Jeeves"
# p some_castle.has_a_butler?

#
p Castle.categories.class
p Castle.categories.join(', ')

#p JSON.parse.class



my_house = House.new('Ker Avel', 5, 10, 12)
#p my_house.has_a_butler?














