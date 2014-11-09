
relative_contacts = {
  frank: 'Frank Blackpot',
  dottie: 'Dottie Spiggot'
}

# Q: What types are the value in this has?
# A: String instances
relative_contacts = {
  frank: ['Frank',  'Blackpot'],
  dottie: ['Dottie', 'Spiggot']
}

puts "Frank's full name is #{relative_contacts[:frank].first} #{relative_contacts[:frank].last}"

puts "Frank's full name is #{relative_contacts[:frank].join(' ')}"

relative_contacts = {
  frank: {'Frank' => 'Blackpot'},
  dottie: {'Dottie'=> 'Spiggot'}
}

frank = relative_contacts[:frank]
puts "Frank's full name is #{frank.keys.first} #{frank['Frank']}"

relative_contacts = {
  frank: {name: 'Frank Blackpot'},
  dottie: {name: 'Dottie Spiggot'}
}

# Below: re-define frank variable
frank = relative_contacts[:frank]

puts "Dottie's full name is #{relative_contacts[:dottie][:name]}"
# Above: :dottie refers to the hash dottie, then :name refers to name w/i hash

# Let's give Frankie an address! (below)
frank[:address] = {}
puts "Added an address hash see #{frank}"
frank[:address][:state] = 'ME'
puts "Added the state to the address hash see #{frank}"
frank[:address][:city] = 'Portland'
puts "Added the city to the address hash see #{frank}"
frank[:address][:street_address] = '67 Elm St'
puts "Added the street address to the address hash see #{frank}"

dottie = relative_contacts[:dottie]
puts "Dottie is #{dottie}"

dotties_addr = {
  state: 'RI',
  city: 'Pawtucket',
  street_address: '45 Maple St'
}

dottie[:address] = dotties_addr
puts "Dottie is #{dottie}"
