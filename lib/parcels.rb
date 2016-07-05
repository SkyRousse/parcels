class Parcel
  define_method(:initialize) do |length, width, height, weight, distance, speed|
    @length = length.to_i
    @width  = width.to_i
    @weight = weight.to_i
    @distance = distance.to_i
    @speed = speed.to_i
    @height = height.to_i
  end
  define_method(:volume) do
    @volume = @length.*(@width).*(@height)
  end
  define_method(:cost) do
    @shipping_total = 0
    @weight_cost = @weight.*(0.5)
    if volume() >= 0
      @shipping_total=(5.+(@weight_cost).+(@speed).+(@distance))
    end
    if volume() > 29
      @shipping_total=(15.+(@weight_cost).+(@speed).+(@distance))
    end
  end
end
