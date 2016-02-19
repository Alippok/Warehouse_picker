def hash_to_array(hash)#for identifying position and distance between 
   return hash.to_a#positions
  
end

def hash_to_array_index(hash,key)
  array =  hash.to_a
  key_arg = key
  for pos_key in array
    if pos_key[0] == key_arg
    return pos_key[0,2]
    end
    
  end
  return false
end