class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []

  def self.all
    @@all.dup.freeze
  end

  def initialize(spieces)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    self.all << self
  end

  def reset_all
    @@all.clear
  end
end
