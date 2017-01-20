class CategoriesController < ApplicationController
  def new
  end

  def create
    @categories = Categories.new(category_params)
    
    @categories = Categories.new(params.require(:categories).permit(:category))

    @categories.save
    redirect_to @categories
  end

  private
  def category_params
    params.require(:categories).permit(:category))
  
end
