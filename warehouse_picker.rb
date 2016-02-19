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
