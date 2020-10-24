# In Ruby there are a few methods available to us for converting data types. For example, it 
# is possible to convert a string to an array, an array into a string, or a range into 
# an array, among other conversions. 

# the .split method will convert a string into an array. The .split method takes an argument
# of the character in the string on which you want to split it. For example, if we have 
# a string that contains a comma-separated list of items:

# "hippo,giraffe,monkey,horse"

# we can call .split on it with an argument of a , ("comma") to get an array of animal names:

# "hippo,giraffe,monkey,horse".split(",")
# => ["hippo", "giraffe", "monkey", "horse"]

# RANGE TO ARRAY

# the .to_a method when called on a range can convert a range of numberes to an array:

# (1..10).to_a
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# ARRAY TO STRING
# the .join method when called on an array will convert it into a string. This method takes in
# an optional string argument containing either a character or a set of characters that will
# be inserted between each array element, as they are assembled into a string.

# For example, calling .join with no argument will create a string out of the array's elements
# by placing each one directly ajdjacent to the next one:

# ["a", "b", "c"].join
# => "abc"

# but calling .join on the same array and giving it an argument of a " :-) " ("smiley face")
# will place an occurrence of that string, (i.e. the smiley face) between each letter.

# ["a", "b", "c"].join(" :-) ")
# = > "a :-) b :-) c"

# INSTRUCTIONS

# WRITE A METHOD oxford_comma THAT TAKES AN ARGUMENT ARRAY OF STRING ELEMENTS AND CONVERTS
# IT INTO A STRING USING THE OXFORD COMMA. FOR EXAMPLE, THE ARRAY ["fiddleheads", "okra", 
# "kohlrabi"] SHOULD GET CONVERTED TO THE STRING "fiddleheads, okra, and kohlrabi".
# HINT -- REMEMBER, STRINGS CAN BE OPERATED ON VERY SIMILARLY TO ARRAYS. FOR INSTANCE, YOU 
# CAN ADD ELEMENTS TO THE END OF STRINGS WITH THE <&lt; ("shovel") METHOD JUST LIKE YOU CAN 
# WITH ARRAYS.
# HINT -- WHAT METHODS ARE AVAILABLE TO YOU FOR CONVERTING ARRAYS INTO STRINGS? YOU MIGHT
# WANT TO LOOK IT UP IN RUBY DOCUMENTATION.

# THIS MIGHT BE A CHALLENGING LAB, SO TAKE YOUR TIME USING GOOGLE AND PLAYING AROUND
# WITH YOUR CODE. GOOD LUCK AND HAVE FUN!



#def oxford_comma(array)
 #   ["kiwi"].join 
#end

#def oxford_comma(array)
#    array = ["kiwi", "durian"]
#    ["kiwi", "durian"].join(" and ")
#end


# wants "kiwi, durian and starfruit" string
#def oxford_comma(array)
#    array = ["kiwi", "durian", "starfruit"]
#    array.pop 
#    array << "and starfruit"
#    ["kiwi", "durian", "and starfruit"].join
#end

def oxford_comma(array)
    if array.size >= 3 
      last = array.pop
      array.push('and '+last)
      array.join(', ')
    elsif array.size >= 1
      array.join(' and ')  
    else
      array.join  
    end  
end




