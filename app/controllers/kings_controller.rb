class KingsController < ApplicationController
  def index
    @kings = King.all
  end

  def show
    @king = King.find(params[:id])
  end
end
