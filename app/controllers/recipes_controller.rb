class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
<<<<<<< HEAD
    @recipe.ingredients.build
=======
    binding.pry
>>>>>>> 8c2f8540e1a49b724f4c8f22c0e5b04d8233192f
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @recipe.ingredients_attributes = params[:recipe][:ingredients_attributes]
    redirect_to @recipe
  end

  def recipe_params
    params.require(:recipe).permit(:title)
  end
end
