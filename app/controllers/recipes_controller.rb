class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
		@categories = @recipes.map(&:cat_types).flatten
	end

	def new	
		@recipe = Recipe.new
	end

	def create
		recipe = params[:recipe]
		category = recipe.delete(:category)
		cat_type = CatType.where(name: category).first
		unless cat_type
			cat_type = CatType.create(name: category)
		end

		@recipe = Recipe.new(recipe)
		@recipe.cat_types << cat_type
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
