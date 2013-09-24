class BlogController < ApplicationController

	def show
		@blog = Blog.find(params[:id])
	end

	def index
	end

end
