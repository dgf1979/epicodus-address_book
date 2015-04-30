require('rspec')
require('contact')

#contact object
describe('Contact') do
  describe('#initialize') do
    it('will return stored init values of contact') do
      test_contact = Contact.new({ :first_name => "Drew", :last_name => "Finstrom", :birth_year => 1979})
      expect(test_contact.first_name).to(eq("Drew"))
      expect(test_contact.last_name).to(eq("Finstrom"))
      expect(test_contact.birth_year).to(eq(1979))
      expect(test_contact.phones).to(eq([]))
    end
  end

  describe('#add_phone') do
    it("will add a phone to the contact's list of phones") do
      test_contact = Contact.new({:first_name => "Toby", :last_name => "Alden", :birth_year => 1991})
      test_phone = Phone.new({:type => "home", :area_code => 503, :number => 1235555})
      test_contact.add_phone(test_phone)
      expect(test_contact.phones).to(eq([test_phone]))
    end
  end

end
