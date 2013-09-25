class Portfolio < ActiveRecord::Base
	validates :title, presence: true, length: {maximum: 140}
	validates :body, presence: true


	has_many :categorization
	has_many :categories, through: :categorization
end
