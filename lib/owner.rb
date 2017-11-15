class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    species.scan(/\A[^aeiou]/) == [species] ? "I am a #{species}." : "I am an #{species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.dogs
  end
end
