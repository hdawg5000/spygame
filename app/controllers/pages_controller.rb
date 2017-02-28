require 'init'

class PagesController < ApplicationController
  def init
  end

  def new
  end
  
  def createGame
    @game = Game.new(params[:name])
    code = @game.gameCode
    #render html: "Waiting for players... Access code: #{code}"
    redirect_to action: "lobby", :code => code
  end

  def join
  end
  
  def joinGame
    @game.addPlayer(params[:name], params[:access_code])
  end

  def game
  end
  
  def lobby
  end
end
