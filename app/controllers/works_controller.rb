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

  def edit
    @work = Work.find(params[:id])
  end

  def update
  @work = Work.find(params[:id])
 
    if @work.update(params[:work].permit(:name, :nota_total, :created_at))
      redirect_to @work
    else
      render 'edit'
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
 
    redirect_to works_path
  end


end
