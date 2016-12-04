require './AddressBook.rb'
require './person.rb'

describe AddressBook do
  it 'should initialize' do
  book = AddressBook.new('joe', 'bloggs', '1 Jan 1990')
  expect(book.address_book).to eq []
  end
  it 'should add a person in AddressBook' do
    book = AddressBook.new('joe', 'bloggs', '1 Jan 1990')
    person1 = Person.new("joe", "blogs", "1 Jan 1990")
    book.add person1
    person2 = Person.new("andy", "nother", "2 Jan 1995")
    book.add person2
    expect(book.address_book).to eq [person1 , person2]
  end

   it 'should load yaml file'do
    book = AddressBook.new('joe', 'bloggs', '1 Jan 1990')
    book.load_yaml('test.yml')
    expect(book.address_book.length).to eq 3
    expect(book.address_book[0].fullname).to eq "Joe Hearts"
    expect(book.address_book[0].dob.class).to eq Date
    expect(book.address_book[0].emails[0]).to eq "joe@foo.com"
    expect(book.address_book[0].phone_numbers[0]).to eq "07876543213"
 
   
 end
end
