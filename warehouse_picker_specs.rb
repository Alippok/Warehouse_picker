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
















end