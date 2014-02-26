class WorksController < ApplicationController

	def create
	    @evaluation = Evaluation.find(params[:evaluation_id])
	    @work = @evaluation.works.create(params[:work])
	    redirect_to evaluation_path(@evaluation)
	end
end
