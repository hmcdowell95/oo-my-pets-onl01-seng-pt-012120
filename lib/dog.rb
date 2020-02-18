class Dog
  attr_accessor :name
  attr_reader :owner, :mood
  
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
end