require 'date'

# Given this hash as an example of person's employment info.
alice_jones = {
  name: 'Alice Jones',
  dob: Date.new(1977,6, 23),
  address: {
    street: '502 Main St.',
    city: 'Newton',
    state: 'MA',
    zip_code: '01345'
  },
  employment_history: [
                       {
                         name: "Whoatemycereal.com",
                         title: "Rails Developer",
                         contact: '978 867-5309',
                         manager: "Gonzo Smith",
                         start_date:  Date.new(2013,12,20),
                         end_date:  Date.new(2014,6, 25),
                         yearly_salary: 75_000
                       },
                       {
                         name: "Dunkin Donuts",
                         title: "Donut Maker",
                         contact: '978 453-5680',
                         manager: "Joe Conway",
                         start_date:  Date.new(2011,8,13),
                         end_date:  Date.new(2013,1, 3),
                         yearly_salary: 16_000
                       },
                       {
                         name: "Google",
                         title: "CEO",
                         contact: '413 958-8909',
                         manager: "God Himself",
                         start_date:  Date.new(2008,3,1),
                         end_date:  Date.new(2011,1, 9),
                         yearly_salary: 5_450_000
                       }

                      ]
}

# Show the first company Alice worked for.
# NOTE: The companies in employment_history are ordered by
# by most to least recent jobs.
puts "The first company Alice worked for."
puts alice_jones[:employment_history].first[:name]


# Show the last company Alice worked for.
puts "The last company Alice worked for."
puts alice_jones[:employment_history].last[:name]

# Show the most recent job's manager.
puts "Most recent manager's name and phone number"
puts alice_jones[:employment_history].first[:manager]

# Change this managers name and show it.
alice_jones[:employment_history].first[:manager] = "Tom Jones"
puts "Most recent manager's new name"
puts alice_jones[:employment_history].first[:manager]

#  Show the Alice's street address
puts "Alice's street address"
puts alice_jones[:address][:street]


# Change the name of the most recent company alice worked for. And
# change her position to "Javascript Developer"
alice_jones[:employment_history].first[:title] = "Javascript Developer"
puts "New position/title"
puts alice_jones[:employment_history].first[:title]


# print out alice's email address.
puts "Alices email is #{alice_jones[:email]}" unless alice_jones[:email] == nil
alice_jones[:email] = "alice@gmail.com"
puts "Alices email is #{alice_jones[:email]}"

# Calculate and show the number of days alice worked at each company
# number of days is (end_date - start_date).to_i
alice_jones[:employment_history].each do |job|
  num_of_days = (job[:end_date] - job[:start_date]).to_i
  puts "#{alice_jones[:name]} was a #{job[:title]} for #{num_of_days}  days " 
end


# What's alice's wage history?
alice_jones[:employment_history].each do |job|
  puts "#{alice_jones[:name]} made #{job[:yearly_salary]} at #{job[:name]}"
end

# Poor Alice took quite a pay cut. What the max, min and largest pay cut?
# Use Array#map
max_salary = alice_jones[:employment_history].map{ |job| job[:yearly_salary] }.max
puts "Her max salary was #{max_salary} "

min_salary = alice_jones[:employment_history].map{ |job| job[:yearly_salary] }.min
puts "Her min salary was #{min_salary}"

largest_paycut = 0


