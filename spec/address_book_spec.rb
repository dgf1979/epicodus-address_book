require('rspec')
require('address_book')

describe('AddressBook') do

  describe('#add_contact') do
    it('returns added contacts in an array') do
      test_address_book = AddressBook.new()
      test_contact = Contact.new(:first_name => "Toby", :last_name => "Alden", :birth_year => 1991)
      test_address_book.add_contact(test_contact)
      expect(test_address_book.contacts).to(eq([test_contact]))
    end
  end

end
