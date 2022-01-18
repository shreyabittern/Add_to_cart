class Product < ApplicationRecord
	belongs_to :categories
	acts_as_paranoid column: 'deleted_at'
	
end
