class Work < ActiveRecord::Base	
	
	attr_accessible :name, :nota_total, :nota, :created_at

	belongs_to :evaluation
end
