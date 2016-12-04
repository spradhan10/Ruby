require 'date'
class Person
  attr_accessor :first_name, :surname, :emails 
  attr_reader :phone_numbers, :dob

  def initialize(fname, sname, dob = 'nill')
    @first_name = fname.capitalize
    @surname = sname.capitalize
    @dob = Date.parse(dob)
    @emails = []
    @phone_numbers = []
  end
  def fullname
     "#{@first_name} #{@surname}"
  end

   def add_email(email)
      @emails << email
    end

  def add_phone(phone)
      @phone_numbers << phone
  end

  def remove_array(rm)
      @emails.delete_at(rm)
  end

    def print_details

      puts fullname
      puts  '_' * (fullname.length)
      puts  'Date of Birth: ' + @dob.strftime('%d %b %Y')
      puts  'Email Addresses: '
      @emails.each do |e| puts '- '+ e end
      puts  'Phone Numbers'
      @phone_numbers.each do |f| puts '- '+ f end

      # anguages.each { |element| puts element }
    end

end
