class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    games = Game.all
    render json: games
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def create
    game = Game.create(game_params)
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(state:[])
    render json: game
  end


end
