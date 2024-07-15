# function.cr
def my_function(param : Int32) : Int32
  x = param
  x += 10
  if x > 15
    x -= 5
  else
    x += 5
  end
  3.times do |i|
    x += i
  end
  x
end

print "Enter an integer: "
input = gets
param = input.to_i
if param == 0 && input.strip != "0"
  puts "Invalid input"
else
  puts my_function(param)
end
