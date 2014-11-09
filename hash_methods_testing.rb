state_abbr = {
  'AL' => 'Alabama',
  'AK' => 'Alaska',
  'AZ' => 'Arizona',
  'AR' => 'Arkansas',
  'CA' => 'California',
  'CO' => 'Colorado',
  'CT' => 'Connecticut',
  'DE' => 'Delaware',
  'FL' => 'Florida',
  'GA' => 'Georgia',
  'HI' => 'Hawaii',
  'ID' => 'Idaho',
  'IL' => 'Illinois',
  'IN' => 'Indiana',
  'IA' => 'Iowa',
  'KS' => 'Kansas',
  'KY' => 'Kentucky',
  'LA' => 'Louisiana',
  'ME' => 'Maine',
  'MD' => 'Maryland',
  'MA' => 'Massachusetts',
  'MI' => 'Michigan',
  'MN' => 'Minnesota',
  'MS' => 'Mississippi',
  'MO' => 'Missouri',
  'MT' => 'Montana',
  'NE' => 'Nebraska',
  'NV' => 'Nevada',
  'NH' => 'New Hampshire',
  'NJ' => 'New Jersey',
  'NM' => 'New Mexico',
  'NY' => 'New York',
  'NC' => 'North Carolina',
  'ND' => 'North Dakota',
  'OH' => 'Ohio',
  'OK' => 'Oklahoma',
  'OR' => 'Oregon',
  'PA' => 'Pennsylvania',
  'RI' => 'Rhode Island',
  'SC' => 'South Carolina',
  'SD' => 'South Dakota',
  'TN' => 'Tennessee',
  'TX' => 'Texas',
  'UT' => 'Utah',
  'VT' => 'Vermont',
  'VA' => 'Virginia',
  'WA' => 'Washington',
  'WV' => 'West Virginia',
  'WI' => 'Wisconsin',
  'WY' => 'Wyoming'
}

# Hash#key?
# checks to see if a key is present in a hash.
# boolean
puts state_abbr.key? 'OH'

# Hash#value?
# checks to see if a value is present in a hash.
# boolean
puts state_abbr.value? 'Virginia'

# Hash#to_a
# converts a hash to an array
puts state_abbr.to_a.join(', ')

# Hash#find
# Find a key value pair in the hash

# Find the first entry where the value of the key value pair is four
puts state_abbr.find{ |k,v| v.length == 4}.inspect

# Hash#select
# Find all key value pairs in a hash
puts state_abbr.select { |k,v| v.length == 4}

# Hash#merge
# Returns a new hash where the duplicate keys get overridden by the hash argument
dict = {"base"=>"foundation", "pedestal"=>"base"}
added = {"base"=>"non-acid", "salt"=>"NaCl"}
# merge added into dict hash
# hash being merged in overwrites entries with the same key
new_dict = dict.merge(added)
puts new_dict

# Simpler example
# Below turns the value for 'AL' to 'foo' and then appends 'zz' => 'bar' to the end
puts state_abbr.merge('AL' => 'foo', 'zz' => 'bar')

# Hash#inject
# AKA reduce
# Takes a data structure as an argument
# Iterates through each one getting the key and value

puts

# Takes an argument to "sum" or "product" and will set this in the block
h1 = { a: 'foo', b: 'bar' }
h2 = h1.inject({}) { |h, (k, v)| h[k.upcase] = v.upcase; h }
puts h2

puts

puts (3..12).inject(4){ |sum, v| sum += v}

# Hash#delete

# Look these up in rubydocs, figure out what they do, try to use on states
