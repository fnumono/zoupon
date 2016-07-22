# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#creating the user list

Product.delete_all
User.delete_all

email_list = [
	["email1@site.com", 12345678],
	["email2@site.com", 12345678],
	["email3@site.com", 12345678]
]	

product_list = [
	["food", 100, 10, "satubulan.jpg", "food"],
	["travel", 200, 20, "satubulan.jpg", "travel"],
	["beauty", 300, 30, "satubulan.jpg", "Beauty"],
	["electronics", 300, 30, "satubulan.jpg", "electronics"],
	["things", 300, 30, "satubulan.jpg", "things to do"]
]

email_list.each do |email, password|
	User.create(email: email, password: password)
end

product_list.each do |title, price, sale, url, category|
	Product.create(title: title, price: price, sale: sale, image_url: url, category: category)
end