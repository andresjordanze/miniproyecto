class WorksController < ApplicationController

	def create
	    @evaluation = Evaluation.find(params[:evaluation_id])
	    @work = @evaluation.works.create(params[:work])
	    @work.nota = 0
	    @work.save
	    redirect_to evaluation_path(@evaluation)
	end

	def edit
		@evaluation = Evaluation.find(params[:evaluation_id])
		@work = @evaluation.works.find(params[:id])
	end

	def show
		@evaluation = Evaluation.find(params[:evaluation_id])
		@work = @evaluation.works.find(params[:id])
	end

	def update
		@evaluation = Evaluation.find(params[:evaluation_id])
		@work = @evaluation.works.find(params[:id])
    	if @work.update(params[:work])
      		@work.save
      		redirect_to :controller => 'evaluations', :action => 'student', :user_id => @evaluation.user_id
    	else
      		render 'edit'
    	end
  	end

	def destroy
		@evaluation = Evaluation.find(params[:evaluation_id])
	    @work = @evaluation.works.find(params[:id])
	    @work.destroy
	    redirect_to evaluation_path(@evaluation)
	end
end
