require('rspec')
require('phone')

describe('Phone') do
  describe('#initialize') do
    it('will return stored init values of Phone') do
      home = Phone.new({ :type => "home", :area_code => 231, :number => 1235555 })
      expect(home.area_code()).to(eq(231))
      expect(home.number()).to(eq(1235555))
      expect(home.type()).to(eq('home'))
    end
  end
end
