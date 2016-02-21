def hash_to_array(hash)#for identifying position and distance between 
   return hash.to_a#positions
  
end

def hash_to_array_index(hash,key)
  array =  hash.to_a
  # key_arg = key Dont need this
  for pos_key in array
    if pos_key[0] == key#_arg
    return pos_key[0,2]
    end
  end
  return false
end  
  


def return_items_index(hash,key,value)
array = hash.to_a
object = key, value
return array.index(object)
  # for pos_key in array
  #   if pos_key[0] == key 
  #    return pos_key[0,2].index(key)
  #   end
  # end
  # return false
  
end

def nested_hash_to_array(hash)
 array_1 = hash[:bay_1].to_a
 array_2 = hash[:bay_2].to_a
 return array_1 + array_2
end

def nested_hash_to_array_find_index(hash,key,value)
  array_1 = hash[:bay_1].to_a
  array_2 = hash[:bay_2].to_a

 full_array = array_1 + array_2
 object = key, value
return full_array.index(object)
  
end


#Now onto returning the difference between two indexes
#Also, look into returning multiple indexes and multiple values

def return_diff_betw_indexes(hash, key_1, value_1, key_2, value_2)
  array_1 = hash[:bay_1].to_a
  array_2 = hash[:bay_2].to_a

  full_array = array_1 + array_2
  object_1 = key_1 , value_1
  object_2 = key_2, value_2
  for item_selection in full_array
    if (item_selection == object_1) || (item_selection == object_2)#trying to make sure the code doesnt get run if there is a mistake in the input but can only check item_selection one at a time and it returns nil for the mistake and error occurs because nil cant be into a Fixnum
      #break if object_1 == nil Trying to implement a test to filter results if they contain a nil
       index_1 = full_array.index(object_1)
       index_2 = full_array.index(object_2)
       difference = index_2 - index_1
       return difference
    end
  end
  return false
end

def return_multiple_values(hash,bay,*key)
  
  information = ""
  for item in key #still need to add in code to check input is correct
   information += hash[bay][item].downcase + " "
  end
  information_array = information.split
  if information_array.length == 1 
  return information 
  elsif information_array.length == 2
    information_array.insert(1,"and ")
    return information_array
  else information_array.length > 2
    second_last_position = information_array.length - 1
    for position in information_array[0..second_last_position]
      if (position % 2 != 0)
        information_array.push(", ")
        penult_array = information_array.insert(second_last_position, "and ")
        penult_array.pop
      return penult_array
      end
    end
  end

  # if key.length > 1
  #   multi_select = key
  #   for item in multi_select
  #     return item += hash[bay][item]
  #   end
  # else
  #   return hash[bay][key]
  # end
end

def return_item(hash, bay, row)
 return hash[bay][row]
end


