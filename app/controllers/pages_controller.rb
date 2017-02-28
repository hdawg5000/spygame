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
    gameFound = false
    count = 0
    Game.instances.each do |x|
      if x.gameCode === params[:access_code]
        gameFound = true
        Game.instances[count].addPlayer(params[:name], params[:access_code])
      end
      count += 1
      redirect_to action: "lobby", :code => params[:access_code]
    end
    render html: "'#{params[:access_code]}' is not a valid access code! Try again" unless gameFound
  end

  def game
  end
  
  def lobby
  end
end
