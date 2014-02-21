class WorksController < ApplicationController
	def new
	end
	def create
		@work = Work.new(params[:work])
 		@work.save
  		redirect_to @work
  	end
end
