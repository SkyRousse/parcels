require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb(:index)
end

get('/results') do
  @length = params.fetch('length')
  @width  = params.fetch('width')
  @weight = params.fetch('weight')
  @distance = params.fetch('distance')
  @speed = params.fetch('speed')
  @height = params.fetch('height')
  @parcel = Parcel.new(@length, @width, @height, @weight, @distance, @speed)
  @result = @parcel.cost()
  erb(:results)
end
