class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all  
    @top_rated = Recipe.rating
    if params[:search_term]
      @search_term = (params[:search_term]) 
        if @search_term != ""
          
        @search_result = Recipe.has_with(@search_term)
        end
    end
    
    render :index
  end

  # def find
  #   @search_result = Recipe.has_with(params[:search_term])
  #   render :index
  # end

  def new 
    @recipe = Recipe.new
    render :new
  end

  def create 
    @recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to recipes_path 
      else
        render :new
      end
    end

    def edit 
      @recipe = Recipe.find(params[:id])
      render :edit 
    end

    def show 
      @recipe = Recipe.find(params[:id])
      render :show 
    end

    def update 
      @recipe = Recipe.find(params[:id])
      if @recipe.update(recipe_params)
        redirect_to recipes_path 
      else
        render :edit 
      end
    end

    def destroy
      @recipe = Recipe.find(params[:id])
      @recipe.destroy 
      redirect_to recipes_path 
    end

    private 
      def recipe_params
        params.require(:recipe).permit(:name, :rating, :instructions, :tag)
      end
    end

