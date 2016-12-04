class FamilyMember < Person
  attr_accessor :relation
  def initialize(fname, sname, relation, dob = '01/10/2000' )
    super(fname, sname, dob  )
    @relation = relation
  end

end
