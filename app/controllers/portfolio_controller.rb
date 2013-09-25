class PortfolioController < ApplicationController
  def category
  	@category = Category.find(params[:id], include: :portfolios)
  	@entries = @category.portfolios
  end

  def show
  	@entry = Portfolio.find(params[:id])
  end

end
