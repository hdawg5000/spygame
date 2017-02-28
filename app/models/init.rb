require 'create_player'

class Game
    @instances = []
    
    class << self
        attr_accessor :instances
    end
  
    attr_accessor :gameCode, :adminName, :players
    
    def initialize(adminName)
        @players = {}
        adminName.capitalize!
        @adminName = adminName
        @gameCode = generateAccessCode
        @players[@adminName] = CreatePlayer.new(@adminName, true, @gameCode)
        self.class.instances << self
    end
    
    def generateAccessCode
        return ('a'..'z').to_a.shuffle[0..5].join
    end
    
    def addPlayer(name, gameCode)
      if (gameCode === @gameCode)
        @players[name] = CreatePlayer.new(name, false, gameCode)
      end
    end

end