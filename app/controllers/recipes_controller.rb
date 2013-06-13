class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    session[:visitor_name] = "paul"
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params[:recipe])

    if @recipe.save
      redirect_to recipes_path, :notice => "you did it! nice recipe"
    else
      flash.now[:alert] = "Fail!!!!"
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update_attributes(params[:recipe])
      redirect_to recipes_path
    else :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    redirect_to recipes_path
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
