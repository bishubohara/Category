class CatTypesController < ApplicationController
  
  def show
    @category = CatType.find params[:id]
    @recipes = @category.recipes
  end


end
