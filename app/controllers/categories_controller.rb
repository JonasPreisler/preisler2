class CategoriesController < ApplicationController

  def index
    @category = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      flash[:danger] = @category.errors.full_messages.to_sentence
      render 'new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
