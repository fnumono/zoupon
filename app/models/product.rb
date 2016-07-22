class Product < ActiveRecord::Base

	def self.search(query)
   		 where("category like ?", "%#{query}%") 
  	end

end
