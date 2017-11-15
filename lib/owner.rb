class Owner
  attr_accessor :name
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

  def say_species
    "I am a #{species}."
  end
end
