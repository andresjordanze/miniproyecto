class CoursesController < ApplicationController
	before_filter :login_required, :except=> [:login_url, :signup_url, :logout_url]
	def new
	end

	def create
		@course = Course.new(params[:course])
		@course.final_evaluation = 0
		@course.continuous_evaluation = 0
 		@course.save
  		redirect_to course
  	end

  	def index
    	@courses = Course.all
  	end

  	def show
 		@course = Course.find(params[:id])
	end

	def evaluation
		@course = Course.find(params[:id])
	end
end
