def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |index|
    index.each do |key, value|
      if index[:item] == name 
        return index
      end
    end
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_array = []
  cart.each do |index|
    if (find_item_by_name_in_collection(index[:item], new_array)) == nil 
      new_array << index 
      index[:count] = 1
    else 
      find_item_by_name_in_collection(index[:item], cart)[:count] +=1
    end
  end
  new_array
end


  