def consolidate_cart(cart)
  new_cart = {}
  cart.each do |hash|
    hash.each do |item, details|
      if new_cart[item]
        new_cart[item][:count] += 1 
      else 
        new_cart[item] = details
        new_cart[item][:count] = 1 
      end
    end
  end
  new_cart
end


def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
