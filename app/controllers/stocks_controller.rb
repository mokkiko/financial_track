class StocksController < ApplicationController

  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render 'users/my_portfolio'
      else 
        flash[:alert] = "ТАКОГО ТИКЕРА НЕ СУЩЕСТВУЕТ"
        redirect_to my_portfolio_path
      end
    else 
      flash[:alert] = "Введите символ тикера !!!!!!!!!!!!!!!!!!!!!"
      redirect_to my_portfolio_path
    end
  end

end
