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
    end
  end

end
