ne_states = {ma: 'Massachucetts', :nh =>  'New Hampshire', :me => 'Maine', :ri => 'Rhode Island', :conn => 'Connecticut', :vt => 'Vermont'}

counter = 0
while(counter < 3)
  print 'Enter State Code: '
  # Get input and convert to a Symbol.
  state_code = gets.chomp.downcase.to_sym
  state_name = ne_states[state_code]

  # break out of loop if found the state by code
  break if state_name
  
  puts "No state for code #{state_code}\n\n"
  counter += 1
end

# Notice the blackslash before double quote to escape, get the literal value of quote.
msg = state_name ? "State name for \"#{state_code}\" is #{ne_states[state_code]}" : 'Ran outa guesses, bye'
puts msg

