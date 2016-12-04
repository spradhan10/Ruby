require './person.rb'
describe Person do
      it 'should initial person' do
        person = Person.new('joe', 'bloggs', '1 Jan 1990')
        expect(person.first_name).to eq 'Joe'
        expect(person.surname).to eq 'Bloggs'
        expect(person.dob.class).to eq Date
        expect(person.emails).to eq []
        expect(person.phone_numbers).to eq []
      end

      it 'should display fullname' do
        person = Person.new('joe', 'bloggs', '1 Jan 1990')
        person.first_name = 'Joe'
        person.surname = 'Bloggs'
        expect(person.fullname).to eq 'Joe Bloggs'
      end


      it 'should print all the email in an array' do
        person = Person.new('joe', 'bloggs', '1 Jan 1990')
        person.add_email 'joe@foo.com'
        person.add_email 'joe.bloggs@work.com'
        expect(person.emails).to eq ["joe@foo.com", "joe.bloggs@work.com"]
      end


      it 'should display person phone_number' do
          person = Person.new('joe', 'bloggs', '1 Jan 1990')
          person.add_phone "07712345678"
          person.add_phone "02012345678"
          expect(person.phone_numbers).to eq ["07712345678", "02012345678"]
      end

      it 'should be able to remove email' do
         person = Person.new('joe', 'bloggs', '1 Jan 1990')
         person.add_email 'joe@foo.com'
         person.add_email 'joe.bloggs@work.com'
         person.remove_array(0)
         expect(person.emails).to eq ["joe.bloggs@work.com"]
      end

#       it 'should describe the person' do
#         person = Person.new('joe', 'bloggs', '1 Jan 1990')
#         person.first_name = 'Joe'
#         person.surname = 'Bloggs'
#         person.fullname
#         person.add_email 'joe@foo.com'
#         person.add_email 'joe.bloggs@work.com'
#         person.add_phone "02012345678"
#         person.remove_array(0)
#         expect(person.print_details).to eq "
# Joe Bloggs
# ----------
# Date of Birth: 01 January 1990
# Email Addresses:
# - joe@foo.com
# - joe.bloggs@work.com
# Phone Numbers:
# - 02012345678"
#       end
end
