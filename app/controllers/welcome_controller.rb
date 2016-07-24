class WelcomeController < ApplicationController

include CurrentCart
before_action :set_cart

  def index
  	
  	if params[:search]
  		@products = Product.search(params[:search]).order("created_at DESC")
  	else
  		@products = Product.all
  	end

  end
end

#if @products.blank?