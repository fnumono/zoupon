class WelcomeController < ApplicationController
  def index
  	
  	if params[:search]
  		@products = Product.search(params[:search]).order("created_at DESC")

  		if @products.blank?
  			puts ("Category could not be found")
  		end
  	else
  		@products = Product.all
  	end

  end
end
