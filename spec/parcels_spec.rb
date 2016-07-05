require('rspec')
require('parcels')

describe('#volume') do
  it('returns the product of the sides of the object') do
    expect(Parcel.new(2,5,1,1,1,1).volume()).to(eq(10))
  end
  describe('#cost') do
    it('returns the cost to ship an object') do
      expect(Parcel.new(2,5,3,1,1,1).cost()).to(eq(17.5))
    end
  end
end
