class Category < ActiveRecord::Base
	has_many :categorizations
	has_many :portfolios, through: :categorizations

	validates :title, presence: true, :uniqueness => true, length: {maximum: 140}

	accepts_nested_attributes_for :categorizations
end
