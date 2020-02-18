class Owner
  attr_accessor :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  @@all = []
  
  def buy_cat(name)
    a = Cat.new(name, self)
  end
  
  def buy_dog(name)
    a = Dog.new(name, self)
  end
  
  def cats 
    a = Cat.all.select{|cat| cat.owner == self}
    a
  end
  
  def dogs 
    a = Dog.all.select{|dog| dog.owner == self}
    a
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def walk_dogs
    a = self.dogs 
    a.each do |x|
      x.mood = "happy"
    end
  end
  
  def feed_cats
    a = self.cats
    a.each do |x|
      x.mood = "happy"
    end
  end
  
  def sell_pets
    a = []
    b = self.dogs
    c = self.cats
    b.each do |x|
      a << x
    end
    c.each do |x|
      a << x 
    end
    a.each do |x|
      x.owner = nil
      x.mood = "nervous"
    end
  end
  
  def list_pets
    puts "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end