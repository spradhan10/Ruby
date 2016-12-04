require './person.rb'
require './FamilyMember.rb'
describe FamilyMember do
  it 'should initialize' do
    #non-optoinal comes 1st
    fmember = FamilyMember.new('joe', 'bloggs','father', '1 Jan 1990',)
    expect(fmember.first_name).to eq 'Joe'
    expect(fmember.surname).to eq 'Bloggs'
    expect(fmember.relation).to eq 'father'
    expect(fmember.dob.class).to eq Date
    expect(fmember.emails).to eq []
    expect(fmember.phone_numbers).to eq []

  end
  it 'should add a relative' do
    fmember = FamilyMember.new('joe', 'bloggs', 'brother', '1 Jan 1990')
    fmember.relation='father'
    expect(fmember.relation).to eq'father'
  end

end
