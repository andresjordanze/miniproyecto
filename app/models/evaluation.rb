class Evaluation < ActiveRecord::Base
	attr_accessible :final_evaluation, :continuous_evaluation, :gestion, :user_id, :created_at, :id, :updated_at
	
	belongs_to :user

	has_many :works, :dependent => :destroy
end