class WorksController < ApplicationController
	def new
    @work = Work.new 
	end

	def create
		@work = Work.new(params[:work])
 		@work.save
  	redirect_to @work
  end
  
  def index
    @works = Work.all
  end

  def show
  		@work = Work.find(params[:id])
	end
end
