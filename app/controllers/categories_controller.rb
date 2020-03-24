class CategoriesController < ApplicationController

  before_action :set_category, only: [:edit,:update, :show, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save

    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      flash[:success] = "Category was successfully updated"
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy

  end

  private

    def category_params
      params.require(:category).permit(:name)
    end

    def set_category
      @category = Category.find(params[:id])
    end
end