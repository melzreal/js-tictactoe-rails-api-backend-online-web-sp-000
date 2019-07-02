class GamesController < ApplicationController

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
    @game.update(game_params)
    render json:@game
  end

  private

  def game_params
    params.require(:game).permit(state:[])
    render json: game
  end

  def find_game
    @game = Game.find(params[:id])
  end


end
