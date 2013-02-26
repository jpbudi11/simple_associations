module OrdersHelper
	def customer_name(order)
		order.customer.company_name unless order.customer.nil? 
	end

	def customer_order_information(customer)
		out = ""
		if customer.orders.nil?
			out = "<tr><td>No Orders Available</td></tr>"
		else
			customer.orders.each do |order| 	
				out += "<tr><td> Order: " + order.customer_name + " Quantity = " + order.quantity.to_s + " Item Bought = " + order.item_name +  "Price = " + order.total_cost.to_s + "</td></tr>"
			end
    	end
		out.html_safe
	end
end