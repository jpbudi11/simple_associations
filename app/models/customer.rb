class Customer < ActiveRecord::Base
  attr_accessible :company_name, :contact_name, :phone
  has_many :orders
end
