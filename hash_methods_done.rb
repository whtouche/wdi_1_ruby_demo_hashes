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


{"a"=>3,"b"=>2}.each do |key, val| 
  puts "key:value = #{key}:#{val}"
end                  

state_abbr.each do |key, val|
  puts "State code #{key}, State name is #{val}"
end

puts state_abbr.keys.inspect
puts state_abbr.values.inspect

# Hash#key?
# Also can use include?, has_key?, member?
state_code = 'OH'
puts state_abbr[state_code] if state_abbr.key?(state_code)
state_abbr.key?(state_code) && (puts state_abbr[state_code])

puts "#{state_abbr.key?(state_code) ? state_abbr[state_code] : 'Incorrect Code'}"

state_code = 'BBBB'
puts "#{state_abbr.key?(state_code) ? state_abbr[state_code] : 'Incorrect Code'}"

# Hash#value?
state_name = 'Ohio'
puts state_abbr.value?(state_name)


# Hash#to_a
puts state_abbr.to_a.inspect

# Array#flatten
puts state_abbr.to_a.flatten.inspect

# Hash#find. Returns the entry/key-pair
# Find the FIRST state with a value that begins with 'M'
some_states = state_abbr.find{ |k, v| v[0] == 'M' }
puts some_states.inspect


# Hash#select. Returns the entries/key-pairs
# alias is Hash#find_all
# Find ALL the states where the value starts with 'M'
some_states = state_abbr.select{ |k, v| v[0] == 'M' }
puts some_states.inspect

# Hash#merge
dict = {"base"=>"foundation", "pedestal"=>"base"}
added = {"base"=>"non-acid", "salt"=>"NaCl"}
# merge added into dict hash
# hash being merged in overwrites entries with the same key
new_dict = dict.merge(added)
puts new_dict

# Find the intersection of Hashes
a = {"a"=>1,"b"=>2,"z"=>3}
b = {"x"=>99,"y"=>88,"z"=>77}

puts "For hash #{a}"
puts "And hash #{b}"
# intersection of the keys
intersection = a.keys & b.keys

# diff of the keys
difference = a.keys - b.keys

# Merge the Hashes into a new Hash
c = a.dup.merge(b)

# for each key in either array, intersection
inter = {}
intersection.each {|k| inter[k]=c[k] }
puts inter  # inter is {"z"=>77}

diff={}
difference.each {|k| diff[k]=c[k] } 
puts diff # diff is {"a"=>1, "b"=>2}


# Hash#inject
h1 = { a: 'foo', b: 'bar' }
h2 = h1.inject({}) { |h, (k, v)| h[k.upcase] = v.upcase; h }
puts h2
# Check out Hash#delete, Hash#empty?
