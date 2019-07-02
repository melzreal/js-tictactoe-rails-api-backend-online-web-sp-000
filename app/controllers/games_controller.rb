class GamesController < ApplicationController
  # Add your GamesController code here
  def index
      games = Game.all 
      render json: games
  end

  def show
  end

  def create
  end

  def update
  end


end
