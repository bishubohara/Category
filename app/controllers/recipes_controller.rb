class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def new	
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(params[:recipe])
		if @recipe.save
			redirect_to recipes_path
		else
			redirect_to :back
		end
	end

	def show
		@recipe = Recipe.find(params[:id])

	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:id])
		@recipe.update_attributes(params[:recipe])
		redirect_to recipe_path
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		redirect_to recipes_path
	end

end
