class Presentation < ActiveRecord::Base
	attr_accessible :name, :porcentaje_nota, :nota, :created_at
	belongs_to :work
end
