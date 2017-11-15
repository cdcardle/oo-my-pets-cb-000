class Owner
  attr_accessor :name, :dogs, :cats, :fish
  attr_reader :species
  @@all = []

  def initialize(spieces)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    self.all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    @fish = fish
  end
end
