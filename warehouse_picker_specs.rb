require ("minitest/autorun")
require_relative("warehouse_picker.rb")

class TestWarehousePicker < MiniTest::Test

def setup
 
  @my_hash = {
     row_a: "Pickles",
     row_b: "Cheese",
     row_c: "Ham"
    
    }
end

def test_hash_to_array()
  result = hash_to_array(@my_hash)
  string = [[:row_a , "Pickles"], [:row_b, "Cheese"], [:row_c, "Ham"]]
  assert_equal(string, result)
end

def test_hash_to_array_index()
  result = hash_to_array_index(@my_hash,:row_a)
  assert_equal([:row_a, "Pickles"], result)
end

def test_return_items_index()
  result = return_items_index(@my_hash,:row_a,"Pickles")
  assert_equal(0, result)
end















end