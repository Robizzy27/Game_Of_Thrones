class EnrollmentsController < ApplicationController
  def new
    @character = Character.new
    @houses = House.all
    @regions = Region.all
    @kings = King.all
  end

  # NHO: What's the difference between this action and Characters#create?
  def create
    @character = Character.new
    # NHO: instead of passing each attribtue individually, would recommend utilizing strong params
    @character.name = params[:character][:name]
    @character.house_id = params[:character][:house_id]
    @character.title = params[:character][:title]
    @character.story = params[:character][:story]
    @character.image = params[:character][:image]
    @character.save
    redirect_to characters_path
  end


end
