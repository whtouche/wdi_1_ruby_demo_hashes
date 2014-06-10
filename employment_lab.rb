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
                         name: "Dunkin Donuts",
                         title: "Donut Maker",
                         contact: '978 453-5680',
                         manager: "Joe Conway",
                         start_date:  Date.new(2011,8,13),
                         end_date:  Date.new(2014,1, 3)
                       },
                       {
                         name: "Google",
                         title: "CEO",
                         contact: '413 958-8909',
                         manager: "God Himself",
                         start_date:  Date.new(2008,3,1),
                         end_date:  Date.new(2011,1, 9)
                       }

                      ]
}

# Show the most recent company worked for

# Show the most recent job's manager.
puts "Most recent manager's name and phone number"
puts alice_jones[:employment_history].first[:manager]

# ii) Change this managers name and show it.
alice_jones[:employment_history].first[:manager] = "Tom Jones"
puts "Most recent manager's new name"
puts alice_jones[:employment_history].first[:manager]
exit

# iii) Show the 
puts "Alice's street address"
puts alice_jones[:address][:street]

# iv) Change the name of the oldest company alice worked for. And
# change her position to "Asst Donut Maker"
alice_jones[:employment_history].first[:title] = "Asst Donut Maker"
puts "New position/title"
puts alice_jones[:employment_history].first[:title]

# v) print out alice's email address.
puts "Alices email is #{alice_jones[:email]}" unless alice_jones[:email] == nil
alice_jones[:email] = "alice@gmail.com"
puts "Alices email is #{alice_jones[:email]}"

# vi) Create a method to show the number of days alice worked at each
# job.
def employment_length(employment_record)

  employment_record[:employment_history].each do |job|
    num_of_days = (job[:end_date] - job[:start_date]).to_i
    puts "#{employment_record[:name]} was a #{job[:title]} for #{num_of_days}  days " 
  end
end

employment_length(alice_jones)

