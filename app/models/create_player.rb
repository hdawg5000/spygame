class CreatePlayer
  
  @instances = []
    
  class << self
      attr_accessor :instances
  end
  
  attr_accessor :name, :isAdmin
  
  def initialize(name, isAdmin)
    @name = name
    @isAdmin = isAdmin
    self.class.instances << self
  end
  
end