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

def return_multiple_locations_with_diff(hash,bay,*item)

  info_holder = []
  for information in item
    info_holder << hash[bay].key(information)
  end
  
  if info_holder.length == 1
    return info_holder
  elsif info_holder.length == 2 
    return info_holder.insert(1, "and ")
  else info_holder.length > 2
    second_last_position = info_holder.length - 1
    for position in info_holder[0..second_last_position]

      if (info_holder.find_index(position) % 2 != 0)
        info_holder.push(", ")

        penult_array = info_holder.insert(second_last_position, "and ")
        penult_array.pop
        penult_array.uniq!
        final_array = penult_array
      end
    end
  end

  
    array_1 = hash[:bay_1].to_a
    array_2 = hash[:bay_2].to_a

    full_array = array_1 + array_2
     
     first_key = hash[bay].key(item.first)
     second_key = hash[bay].key(item.last)
     object_1 = first_key, item.first
     object_2 = second_key, item.last

     for item_selection in full_array
       if (item_selection == object_1) || (item_selection == object_2)#trying to make sure the code doesnt get run if there is a mistake in the input but can only check item_selection one at a time and it returns nil for the mistake and error occurs because nil cant be into a Fixnum
        #break if object_1 == nil Trying to implement a test to filter results if they contain a nil
         index_1 = full_array.index(object_1)
         index_2 = full_array.index(object_2)
         difference = index_2 - index_1
         diff = difference
       end
     end
    
  

  return "#{final_array}" + " #{diff} bays apart"
end

def return_item(hash,bay,row)
 return hash[bay][row]
end

def return_location(hash,bay,item)
  return hash[bay].key(item)
end

#Just need to create the warehouse hash of all the items for homework and make sure that my functions can search that hash. Also, possibly add code where user asked for input and recieves location/position based on query

def hash_to_array_main(hash)
  array_1 = hash[:area_a].to_a
  array_2 = hash[:area_c].to_a
  array_3 = hash[:area_b].to_a
  return full_array = array_1 + array_2 + array_3
end

def return_bay_index_main(hash, area)
  area = area.to_sym
  array_1 = hash[:area_a].to_a
  array_2 = hash[:area_c].to_a
  array_3 = hash[:area_b].to_a
  full_array = array_1 + array_2 + array_3

  for bay in full_array
    if bay[0] == area
    bay_item = bay[0,2]
    return full_array.index(bay_item)
    end
  end
end

def return_bay_distances_main(hash,*area)
  

  bay_1 = area.first
  bay_2 = area.last
  bay_1_main = bay_1.to_sym
  bay_2_main = bay_2.to_sym
  
  array_1 = hash[:area_a].to_a
  array_2 = hash[:area_c].to_a
  array_3 = hash[:area_b].to_a
  full_array = array_1 + array_2 + array_3

  for bay in full_array
   if bay[0] == bay_1_main
    bay_item1 = bay[0,2]
   end
   if bay[0] == bay_2_main
     bay_item2 = bay[0,2]
   end     
  end
    index_1 = full_array.index(bay_item1)
    index_2 = full_array.index(bay_item2)
    return difference = index_2 - index_1
end

def return_bay_item_main(hash,*bay)
  bay_keys=[]
  for bays in bay
    bay_keys.push(bays.to_sym)
  end
array = []
  if bay_keys.length == 3
  for bay_key in bay_keys
    if hash[:area_a].has_key?(bay_key)
      bay_item_a = hash[:area_a][bay_key]
    elsif hash[:area_c].has_key?(bay_key)
      bay_item_c = hash[:area_c][bay_key]
    else hash[:area_b].has_key?(bay_key)
      bay_item_b = hash[:area_b][bay_key]
    end
    array.push(bay_item_a, bay_item_c, bay_item_b)
    
  end
  elsif bay_keys.length == 2
    for bay_key in bay_keys
      if hash[:area_a].has_key?(bay_key)
        bay_item_a = hash[:area_a][bay_key]
      elsif hash[:area_c].has_key?(bay_key)
        bay_item_c = hash[:area_c][bay_key]
      else hash[:area_b].has_key?(bay_key)
        bay_item_b = hash[:area_b][bay_key]
      end
      array.push(bay_item_a, bay_item_c, bay_item_b)
      
    end
  else bay_keys.length == 1 
    for bay_key in bay_keys
      if hash[:area_a].has_key?(bay_key)
        bay_item_a = hash[:area_a][bay_key]
      elsif hash[:area_c].has_key?(bay_key)
        bay_item_c = hash[:area_c][bay_key]
      else hash[:area_b].has_key?(bay_key)
        bay_item_b = hash[:area_b][bay_key]
      end
      array.push(bay_item_a, bay_item_c, bay_item_b)
      
    end
  end

    # if bay_key == bay_key.id2name.include?("a")
    #   bay_item_1 = @warehouse[:area_a][bay_key]
    # elsif bay_key == bay_key.id2name.include?("c")
    #   bay_item_2 = @warehouse[:area_c][bay_key]
    # else bay_key == bay_key.id2name.include?("b")
    #   bay_item_3 = @warehouse[:area_b][bay_key]
    # end
  
    

    bay_1 = bay.first
    bay_2 = bay.last
    bay_1_main = bay_1.to_sym
    bay_2_main = bay_2.to_sym
    
    array_1 = hash[:area_a].to_a
    array_2 = hash[:area_c].to_a
    array_3 = hash[:area_b].to_a
    full_array = array_1 + array_2 + array_3

    for bay in full_array
     if bay[0] == bay_1_main
      bay_item1 = bay[0,2]
     end
     if bay[0] == bay_2_main
       bay_item2 = bay[0,2]
     end     
    end
      index_1 = full_array.index(bay_item1)
      index_2 = full_array.index(bay_item2)
      difference = index_2 - index_1
      return  array.compact.uniq.push(difference)

end

    


  








