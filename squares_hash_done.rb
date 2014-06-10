print "Enter a minimum number : "
min = gets.chomp
puts

print "Enter a maximum number : "
max = gets.chomp
puts

squares = { }

# Calculate squares of successive integers btw
# min and max
(min.to_i..max.to_i).each do |num|
  # make the value in the pair a string
  squares[num] = (num * num).to_s
end

puts "Squares hash is #{squares}"

