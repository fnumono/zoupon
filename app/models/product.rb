class Product < ActiveRecord::Base

	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item


	def self.search(query)
   		 where("category like ?", "%#{query}%") 
  	end



  	private 

  	def ensure_not_referenced_by_any_line_item
  		if line_items.empty?
  			return true
  		else
  			errors.add(:base, 'Line Item Present')
  			return false
  		end
  	end

end
