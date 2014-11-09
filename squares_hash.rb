
puts "Please provide a minimum number"
min_num = gets.chomp.to_i

puts "Please provide a maximum number"
max_num = gets.chomp.to_i

squares = {}

(min_num..max_num).each do |num| # here we create a range using the two variables
  squares[num] = (num * num).to_s
  # Above: fill the squares hash with the square of each number
  # in the range between min and max
end

puts "Squares hash is #{squares}"
