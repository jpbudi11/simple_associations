class Order < ActiveRecord::Base
  attr_accessible :item_name, :quantity, :total_cost, :customer_id, :customer_name, :item_id
  has_one :item
  belongs_to :customer
  

  validates :customer_id, presence: { message: "is not being provided"}

  before_validation :convert_customer_name_to_id
  before_validation :convert_item_id_to_name

  def convert_customer_name_to_id
    
  	customer = Customer.find_by_company_name(self.customer_name)
  	
  	self.customer_id = customer.id unless customer.nil?
  end

  def convert_item_id_to_name
    
  	item = Item.find_by_id(self.item_id)
  	
  	self.item_name = item.name unless item.nil?
  end
end
