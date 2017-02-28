require 'create_player'

class Game
    @instances = []
    
    class << self
        attr_accessor :instances
    end
  
    @players = {}
  
    attr_accessor :gameCode, :adminName, :playerList
    
    def initialize(adminName)
        adminName.capitalize!
        @adminName = adminName
        @gameCode = generateJoinCode
        addPlayerToGame(@adminName, @gameCode, true)
        self.class.instances << self
    end
    
    def generateJoinCode
        return ('a'..'z').to_a.shuffle[0..5].join
    end
    
    def addPlayerToGame(name, code, isAdmin)
        @playerList[name] = CreatePlayer.new(name, isAdmin)
    end

end