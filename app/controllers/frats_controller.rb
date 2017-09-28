class FratsController < ApplicationController

  def index
    @frats = Frat.all
  end

  def new
    @frat = Frat.new
  end

  def show
    @frat = Frat.find(params[:id])
  end

  def create
    @frat = Frat.new(frat_params)
     if @frat.save
       redirect_to frat_path(@frat)
     else
       render :new
     end
  end

  def edit
    @frat = Frat.find(params[:id])
  end

  def update
    @frat = Frat.find(params[:id])
    if @frat.update(frat_params)
      redirect_to frat_path(@frat)
    else
      render :edit
    end
  end

  def delete
    @frat = Frat.find(params[:id])
    @frat.destroy
    redirect_to frat_row_path
  end

  private

  def frat_params
    params.require(:frat).permit(:name)
  end



end
