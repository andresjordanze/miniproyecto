class Work < ActiveRecord::Base
	attr_accessible :name, :nota_total, :nota, :created_at
	has_many :presentations, :dependent => :destroy
end
