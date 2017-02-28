class CreatePlayer
  
  @instances = []
    
  class << self
      attr_accessor :instances
  end
  
  attr_accessor :name, :isAdmin, :gameCode
  
  def initialize(name, isAdmin, gameCode)
    @name = name
    @isAdmin = isAdmin
    @gameCode = gameCode
    self.class.instances << self
  end
  
end