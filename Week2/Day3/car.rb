class Car

  attr_reader :engine_started
  attr_accessor :color

  def initialize(color)
    @color = color
    @engine_started = false
  end

  def engine_started?
    return @engine_started
  end

  def start_engine!
    #@engine_started = true
    open_oil_pump
    ...
  end

  def color=(new_color)
    @color = new_color
  end

  def color
    return @color
  end

  private

  def method_name

  end

end


# car,rb -> class Car
# sport_car.rb -> class SportCar
