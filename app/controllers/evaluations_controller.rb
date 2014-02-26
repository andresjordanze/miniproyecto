class EvaluationsController < ApplicationController
	def new
	end

	def create
 		@evaluation = Evaluation.new(params[:evaluation])
 		@evaluation.final_evaluation = 0
 		@evaluation.continuous_evaluation = 0
  		@evaluation.save
  		redirect_to @evaluation
	end

	def add
		@user = User.find(params[:user_id])
		@existing_evaluation = Evaluation.find(1)
		#create new object with attributes of existing record 
		@evaluation = Evaluation.new(@existing_evaluation.attributes)
		@evaluation.id = Evaluation.last.id + 1
		@evaluation.user_id = @user.id
		@evaluation.save 
		redirect_to @evaluation
	end

	def show
		@evaluation = Evaluation.find(params[:id])
	end

	def index
		if current_user.rol == 'student'
			if Evaluation.find(:all, :conditions => { :user_id => current_user.id}).first != nil
				@evaluation = Evaluation.find(:all, :conditions => { :user_id => current_user.id}).first
				redirect_to @evaluation
			else
				redirect_to :controller => 'home', :action => 'index'
			end
		else
			@users = User.all
			@evaluations = Evaluation.all
		end
	end
end
