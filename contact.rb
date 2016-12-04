require 'pry'
def user
puts "Enter first name: "
f_name = gets.chomp
puts "Enter last name: "
last_name = gets.chomp
puts "Enter D.O.B. in this format: DD/MM/YYY"
date = gets.chomp.to_i
@rel = []
def add_rel(x)
  @rel.push(x)
  puts "Enter a relative "
  name = gets.chomp
  puts "would you like to exit? Y/N"
  ans = gets.chomp.downcase
  if ans == 'n'
    add_rel(name)
  else ans == 'y'
    @rel.push('no relative')
end
person_d = {
  fname: f_name ,
  lname: last_name ,
  dob: date,
  relative: @rel
  }
end

puts user
