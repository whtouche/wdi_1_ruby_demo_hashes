ne_states = {ma: 'Massachusetts', :nh =>  'New Hampshire', :me => 'Maine',
 :ri => 'Rhode Island', :conn => 'Connecticut', :vt => 'Vermont'}

counter = 0
while counter < 3
  puts "Please enter valid NE state code"
  code_input = gets.chomp.downcase.to_sym

  if ne_states[code_input] # this is a boolean
   puts "State name for #{code_input} is #{ne_states[code_input]}."
   break # it worked! Break out of the loop, move on to line 16
  end
  counter += 1
end

if counter = 3 && !ne_states[code_input] #
  puts "You did not enter a valid NE state code in three tries :("
end
