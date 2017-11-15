class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def initialize(spieces)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.reset_all
    @@all = []
  end
end
