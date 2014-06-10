## Ruby Symbols
Symbols are immutable strings. And they save memory by not creating                          new object for each value.                                                                   

Symbols work well when we want to refer to the same thing string multiple times throughout a program.  
  
For example, if we had to use the string "foo" in many                   places in the program it would create an object for each time we                                used the string "foo". You may want to use the symbol :foo instead.

Symbols work well as Hash Keys. 

### Demo
Go thru symbols.rb

## Ruby Hashes

The Ruby Hash class implements a "data structure" that provides a
collection of key-value pairs. The keys are used to 'index', or find,
the value associated with the value.

### Demo
Create a file _simple_hash.rb_.   
Finished version is  _simple_hash_done.rb_

### Lab 
Write a program in the file _squares_hash.rb_ that:  
* Prompts the user for a minimum and maximum number.  
* Generates a Hash that has key-value pairs, or entries, where.    
	* Each key in a pair is a integer between the min and max entered.  
	* Each value in the pair is the square of key in that pair. But this value should be instance of String. 
* Show/print the hash generated.

### Lab
Modify _choose_state.rb_ to prompt and get a New England state code from the user. Then print out the name of the state.  

### Demo
Create a file _relative_contacts.rb_.   
Finished version is  _relative_contacts_done.rb_

### Demo
Modify the file hash_methods.rb.  
Finished version is in hash_methods_done.rb

### Lab
Modify the file _employment_lab.rb_. The directions are in the comments.  
Finished version is in _employment_lab_done.rb_.  

### Hash#fetch (Advanced)
* Used to cause an error where you initially get a non-existent key/entry.
* And to set a default value for an key from a hash.

Work thru hash_fetch.rb
