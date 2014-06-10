require 'faker'
require 'awesome_print'

contacts = []
4.times do 
  state = Faker::Address.state
  city = Faker::Address.city
  street = Faker::Address.street_address
  zip = Faker::Address.zip
  lat = Faker::Address.latitude
  long = Faker::Address.longitude

  contact = {
                name: Faker::Name.name,
                address: {
                  state: "#{state}",
                  city: "#{city}", 
                  street: "#{street}", 
                  zip: "#{zip}", 
                  lat: "#{lat}", 
                  long: "#{long}"
                }               
              }
  contacts << contact
end

# pretty print contacts
ap contacts, { indent: 2, index: false, multiline: true}
