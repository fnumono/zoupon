class WelcomeController < ApplicationController
  def index
  	
  	if params[:search]
  		@products = Product.search(params[:search]).order("created_at DESC")
  	else
  		@products = Product.all
  	end

  end
end

#if @products.blank?