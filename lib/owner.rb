class Owner
  attr_accessor :name, :dogs, :cats, :fish
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end
  
  def initialize(spieces)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    self.all << self
  end

  def reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    @fish = fish
  end
end
