require 'pry-byebug'


# Create a hash containing key-value pairs for the the new england states.
ne_states = {'MA' =>  'Massachucetts', 'NH' =>  'New Hampshire', 'ME' => 'Main', 'RI' => 'Rhode Island', 'CONN' => "Connecticut", 'VT' => 'Vermont'}

binding.pry

# How many entries in ne_states?
# What is the class of all the keys?

# Notice, you MUST use the old 'hash rocket' syntax, (=>), when the
# keys are NOT symbols.

# Access the key-value pair for Rhode Island and Mass
ri_name = ne_states['RI'] 
ma_name = ne_states['MA']

puts "The full name for ne_states['RI'] is #{ne_states['RI']}"
# Exit this program
# exit

# Hash have similar access syntax as Arrays. But keys can be any type/class!

# Create a hash where the keys are a mixture of integers and strings.
squares = {3 => 'nine', 4 => 'sixteen',  'twenty-five' => 25}
puts "The square hash = #{squares}"

# Typically hash keys are symbols.
# Why?

# Because duplcate symbols ALL reference the SAME instance of a Symbol.
my_key = "john"
puts my_key.object_id
my_key = "john"
puts my_key.object_id

# See how we actually created two instances of a String even tho they
# have the same value. Waste of memory here.

my_sym_key = :john
puts my_sym_key.object_id
my_sym_key = :john
puts my_sym_key.object_id

# Two symbols are actually the SAME instance of Symbol class.

# Symbols are immutable. They can't be changed. Immutable data structures
# are prefered because of the memory efficiency and for multi-threaded app.

# Old, "hash rocket",  syntax for hashes where keys are symbols.
ne_states = {:ma =>  'Massachucetts', :nh =>  'New Hampshire', :me => 'Maine', :ri => 'Rhode Island', :conn => 'Connecticut', :vt => 'Vermont'}

puts "ne_states are #{ne_states}"

# Newer, improved syntax. Added in Ruby 1.9
# same as above, better syntax
ne_states = {ma: 'Massachucetts', :nh =>  'New Hampshire', :me => 'Maine', :ri => 'Rhode Island', :conn => 'Connecticut', :vt => 'Vermont'}

puts "ne_states are #{ne_states}"

