class EnrollmentsController < ApplicationController
  def new
    @character = Character.new
    @houses = House.all
    @regions = Region.all
    @kings = King.all
  end

  def create
    @character = Character.new
    @character.name = params[:character][:name]
    @character.house_id = params[:character][:house_id]
    @character.title = params[:character][:title]
    @character.save
    redirect_to characters_path
  end


end
