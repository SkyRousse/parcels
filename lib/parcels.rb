class Parcel
  define_method(:initialize) do |length, width, weight, distance, speed|
    @length = length.to_i
    @width  = width.to_i
    @weight = weight.to_i
    @distance = distance.to_i
    @speed = speed.to_i
  end
  define_method(:volume) do
    @volume = @length.*(@width)
  end
  define_method(:cost) do
    @shipping_total = 0
    @weight_cost = @weight.*(0.5)
    if @volume.>=(0..20) do
      @shipping_total=(5.+(@weight_cost))
    end
    if @volume.>=(21..50) do
      @shipping_total=(15.+(@weight_cost))
    end
  end
end
