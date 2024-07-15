# function.rb
def my_function(param)
  x = param
  x += 10
  if x > 15
      x -= 5
  else
      x += 5
  end
  for i in 0..2
      x += i
  end
  return x
end

print "Enter an integer: "
input = gets.chomp
param = input.to_i

if param == 0 && input != "0"
  puts "Invalid input"
else
  puts my_function(param)
end
