class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)

    redirect_to character_path
  end

  private
  def character_params
    params.require(:character).permit(:story) # NHO: looks like there is more than just 1 field on Character
  end
end
