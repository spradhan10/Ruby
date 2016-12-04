require 'YAML'
require 'pry'
require './person.rb'
require 'date'

class AddressBook < Person 
  attr_accessor :address_book
        def initialize (first_name, surname, dob='nil')
          	super
            @address_book = []
            @emails = []
            @phone_numbers = []
      
        end
  
       def add(person)
       		@address_book << person
       end

   def load_yaml(file)
     	f = YAML.load(File.open('test.yml'))
     	f["people"].each do |person|
     		  # binding.pry
     		people = Person.new(person["first_name"], person["Surname"], person["dob"]) 
     		
     		 person["email"].each do |email| people.add_email(email) end
     		 person["phone"].each do |ph| people.add_phone(ph)end
  		
  		@address_book << people

  	 end
    end
 
end
