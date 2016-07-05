require('rspec')
require('parcels')

describe('#volume') do
  it('returns the product of the sides of the object') do
    expect(Parcel.new(2,5,50).volume()).to(eq(10))
  end
  describe('#cost') do
    it('returns the cost to ship an object') do
      expect(Parcel.new(2,5,10,0,0).cost()).to(eq(50))
    end
  end
end
