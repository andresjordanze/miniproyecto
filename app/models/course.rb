class Course < ActiveRecord::Base
	attr_accessible :name, :final_evaluation, :continuos_evaluation, :gestion, :created_at
	has_many :works, :dependent => :destroy
end
