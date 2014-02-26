class AdsController < ApplicationController
	def new
	end

	def create
  		@ad = Ad.new(params[:ad])
  		@ad.save
  		redirect_to :controler => :ads, :action => 'index'
	end

	def show
		@ad = Ad.find(params[:id])
	end

	def index
  		@ads = Ad.all
	end

	def destroy
	  @ad = Ad.find(params[:id])
	  @ad.destroy
	 
	  redirect_to ads_path
	end
end
