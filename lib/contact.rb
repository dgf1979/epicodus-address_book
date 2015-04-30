class Contact

  attr_reader(:first_name, :last_name, :birth_year, :phones)

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @birth_year = attributes.fetch(:birth_year)
    @phones = []
  end

  define_method(:add_phone) do |phone|
    @phones.push(phone)
  end

end
