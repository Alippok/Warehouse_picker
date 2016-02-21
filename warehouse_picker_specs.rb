require ("minitest/autorun")
require_relative("warehouse_picker.rb")

class TestWarehousePicker < MiniTest::Test

def setup
 
  @my_hash = {
     row_a: "Pickles",
     row_b: "Cheese",
     row_c: "Ham"
    
    }

    @my_hash2 = {
      bay_1: {
        row_a: "Pickles",
        row_b: "Cheese",
        row_c: "Ham"
      },
      bay_2: {
        row_a: "Brown bread",
        row_b: "White bread",
        row_c: "Sourdough"
      }
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


def test_nested_hash_to_array()
  result = nested_hash_to_array(@my_hash2)
  assert_equal([[:row_a, "Pickles"], [:row_b, "Cheese"], [:row_c, "Ham"], [:row_a, "Brown bread"], [:row_b, "White bread"], [:row_c, "Sourdough"]], result)
end

def test_nested_hash_to_array_find_index()
  result = nested_hash_to_array_find_index(@my_hash2,:row_b, "Cheese")
  assert_equal(1, result)
end

def test_return_diff_betw_indexes()
  result = return_diff_betw_indexes(@my_hash2,:row_a, "Pickles",:row_c, "Sourdough")
  assert_equal(5, result)
end

def test_return_multiple_values()
  result = return_multiple_values(@my_hash2,:bay_1,     :row_a, :row_b,:row_a, :row_c)
  assert_equal(["pickles","cheese", "pickles", "and ", "ham"], result)
end

def test_return_multiple_locations_with_diff()
  result = return_multiple_locations_with_diff(@my_hash2,:bay_1, "Pickles", "Cheese", "Ham")
  assert_equal('[:row_a, :row_b, "and ", :row_c]' + " 2 bays apart", result)
end

def test_return_item()
  result = return_item(@my_hash2,:bay_2,:row_c)
  assert_equal("Sourdough", result)
end

def test_return_location()
  result = return_location(@my_hash2,:bay_2,"Sourdough")
  assert_equal(:row_c, result)
end



end