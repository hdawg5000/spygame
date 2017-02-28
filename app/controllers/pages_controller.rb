require 'init'

class PagesController < ApplicationController
  def init
  end

  def new
  end
  
  def createGame
    game = Game.new(params[:name])
    code = game.gameCode
    render html: "Waiting for players...
      Access code: #{code}"
  end

  def join
  end

  def game
  end
end
