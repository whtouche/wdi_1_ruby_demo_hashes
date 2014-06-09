require 'pry'

# set a breakpoint here.
# binding.pry

# A Hash can have a Symbol as a Key and a String as a value.
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
puts "relative_contacts points to the Hash object with an id of #{relative_contacts.object_id}"

# Same as above. We're assigning another, different, Hash object to
# to the relative_contacts variable.
relative_contacts = {
  frank: { name: ['Frank', 'Blackpot']},
  dottie: { name: ['Dottie','Spiggot']}
}
puts "relative_contacts points to the Hash object with an id of #{relative_contacts.object_id}"

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
puts "relative_contacts points to the Hash object with an id of #{relative_contacts.object_id}"
puts "franks contact info is #{relative_contacts[:frank]}"


