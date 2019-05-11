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
 return cart if coupons == []
 new_cart = cart 
 coupons.each do |coupon|
   name = coupon[:item]
   number = coupon[:num]
          #does cart have same item in coupon, but larger amount that coupon? i.e. is cart[avocado][:count] >= number
   if cart.include?(name) && cart[name][:count] >= number 
     new_cart[name][:count] -= number 
          #remove the new_cart count
   if new_cart["#{name} W/COUPON"]
     new_cart["#{name} W/COUPON"][:count] += 1 
          #INCREASE COUNT WHEN MORE ITEMS THAN coupons 
   else 
     new_cart["#{name} W/COUPON"] = {
       :price => coupon[:cost],
       :clearance => new_cart[name][:clearance],
       :count => 1 
     }
   end
 end
 end
 new_cart
end


def apply_clearance(cart)
  new_cart = cart 
  cart.each do |items, info|
    if info[:clearance] 
      new_cart[items][:price] = cart[items][:price] * 0.8 
    end
  end
  new_cart
end

def checkout(cart, coupons)
  
end
