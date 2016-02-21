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

  index_1 = full_array.index(object_1)
  index_2 = full_array.index(object_2)

  difference = index_2 - index_1
  return difference
  
end





