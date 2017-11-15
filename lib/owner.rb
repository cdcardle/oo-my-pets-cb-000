class Owner
  attr_accessor :name, :dogs, :cats, :fish, :species
  attr_reader 
  @@all = []

  def self.all
    @@all
  end

  def initialize(spieces)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
end
