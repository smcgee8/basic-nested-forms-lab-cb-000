class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "--First Ingredient--")
    @recipe.ingredients.build(name: "--Second Ingredient--")
  end

  def create
  end
end
