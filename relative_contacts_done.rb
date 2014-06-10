require 'pry'

# set a breakpoint here.
# binding.pry

relative_contacts = {
  frank: 'Frank Blackpot',
  dottie: 'Dottie Spiggot'
}
puts "Frank's full name is #{relative_contacts[:frank]} #{relative_contacts[:frank]}"

# A Hash can have a Symbol as a Key and a Array as a value.

# Note: relative_contacts is pointing to a TOTALLY different instance
# of a Hash.
# Make sure we all know that in our bones.
relative_contacts = {
  frank: ['Frank', 'Blackpot'],
  dottie: ['Dottie','Spiggot']
}
puts "Frank's full name is #{relative_contacts[:frank][0]} #{relative_contacts[:frank][1]}"

# Same as above BUT add a phone key-value pair where the key is the symbol :phone
# and the value is a string representing the phone #.
relative_contacts = {
  frank: {
    name: ['Frank', 'Blackpot'],
    phone: '978 555-3367'
  },
  dottie: {
    name: ['Dottie','Spiggot'],
    phone: '978 867-5301'
  }
}
uncle_frank = relative_contacts[:frank]
puts "Frank's phone # is #{uncle_frank[:phone]}"
puts "Cousin Dottie's phone # is #{relative_contacts[:dottie][:phone]}"

#### Now lets MODIFY an existing hash object.
relative_contacts[:frank][:address] = {
  state: 'ME',
  city: 'Portland',
  street_address: '67 Elm St.'
}
relative_contacts[:dottie][:address] = {
  state: 'RI',
  city: 'Pawtucket',
  # 2 address, first is main home, second is work
  street_address: ['44 Warren St.', '567 Main St.']
}

puts "franks contact info is #{relative_contacts[:frank]}"
puts "dottie's contact info is #{relative_contacts[:dottie]}"

# Dottie move across the street
relative_contacts[:dottie][:address][:street_address][0] = "47 Warren St"
puts "dottie's contact info is #{relative_contacts[:dottie]}"

# Oh, frank changed his phone number.
uncle_frank[:phone] = '978 677-4321'
puts "franks contact info is #{relative_contacts[:frank]}"

