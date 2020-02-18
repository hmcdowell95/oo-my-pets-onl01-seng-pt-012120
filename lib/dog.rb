class Dog
  attr_reader :name
  attr_accessor :owner, :mood
  
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  
end