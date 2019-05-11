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
   #does cart have same item in coupon, but larger amount that coupon? i.e. is cart[avocado][:count] > number 
end

    name = coupon[:item] #avocado, cheese,...
    num_of_c = coupon[:num]
    #if the cart has the same item in coupon and has larger amount than in coupon
    if cart.include?(name) && cart[name][:count] >= num_of_c
       #remove number of the new_cart's count
       new_cart[name][:count] -= num_of_c
       #increase the count when there is more items than the coupon allows
       if new_cart["#{name} W/COUPON"]
         new_cart["#{name} W/COUPON"][:count] += 1
       #set the name with coupon with new value
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
  # code here
end

def checkout(cart, coupons)
  # code here
end
