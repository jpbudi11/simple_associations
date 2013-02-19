module OrdersHelper
	def customer_name(order)
		order.customer.company_name unless order.customer.nil? 
	end

	def customer_order_information(customer)
		out = ""
		if customer.orders.first.nil?
		  
			out = "<tr><td>No Orders Available</td></tr>"
			
		else
			customer.orders.each do |order| 
			  
				link_info = link_to order_information(order), order
				
				out << "<tr><td> Link To Order :" << link_info << "</td></tr>"
			end
    	end
		out.html_safe
	end

	def order_information(order)
		out = order.customer_name << " Quantity = " << order.quantity.to_s << " Item Bought = " << order.item_name <<  "Price = " << order.total_cost.to_s
		out.html_safe
	end
end