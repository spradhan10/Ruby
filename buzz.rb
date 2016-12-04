n = 1..200
n.each do |v|
 if v % 3 == 0 && v % 5 == 0
     puts 'FizzBuzz'
 elsif v % 3 == 0
     puts 'Fizz'
 elsif v % 5 == 0
     puts 'Buzz'
  else
    puts v
   end
end
