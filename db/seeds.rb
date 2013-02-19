# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.delete_all
Item.delete_all
Order.delete_all

customer1 	= Customer.create(company_name: "BigSleder Company", phone: "1-800-345-5467", contact_name: "Mountain Man")
customer2 	= Customer.create(company_name: "BlownMotor", phone: "1-244-877-5123", contact_name: "Dave The Sled Man")
customer3 	= Customer.create(company_name: "Joe's Garage", phone: "507-340-1201", contact_name: "Joe Budin")

arcticcat		= Item.create!(name: "Arctic Cat Snowmobile")
polaris 	= Item.create!(name: "Polairs Snowmobile")
yamaha	= Item.create!(name: "Yamaha Snowmobile")


firstOrderFor1		= Order.create!(customer_name: "BigSleder Company", quantity: 1, item_id: arcticcat.id, total_cost: 12432.00)
secondOrderFor1 	= Order.create!(customer_name: "BigSleder Company", quantity: 4, item_id: polaris.id, total_cost: 23987.00)
thirdOrderFor1 	= Order.create!(customer_name: "BigSleder Company", quantity: 3, item_id: yamaha.id, total_cost: 16673.00)

firstOrderFor2		= Order.create!(customer_name: "BlownMotor", quantity: 15, item_id: arcticcat.id, total_cost: 54234.00)
secondOrderFor2		= Order.create!(customer_name: "BlownMotor", quantity: 2, item_id: polaris.id, total_cost: 15234.00)
thirdOrderFor2	= Order.create!(customer_name: "BlownMotor", quantity: 11, item_id: yamaha.id, total_cost: 23042.00)

firstOrderFor3	= Order.create!(customer_name: "Joe's Garage", quantity: 34, item_id: arcticcat.id, total_cost: 104020.00)
secondOrderFor3	= Order.create!(customer_name: "Joe's Garage", quantity: 65, item_id: polaris.id, total_cost: 238098.00)
thirdOrderFor3	= Order.create!(customer_name: "Joe's Garage", quantity: 103, item_id: yamaha.id, total_cost: 672983.00)