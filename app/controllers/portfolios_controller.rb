class PortfoliosController < ApplicationController

  def index
    portfolio = Portfolio.all
  end

  def show
    portfolio = Portfolio.find(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to @portfolio
    else
      flash[:danger] = @portfolio.errors.full_messages.to_sentence
      render 'new'
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:name, :description, :image, :category, :category_id, :link)
  end
end
