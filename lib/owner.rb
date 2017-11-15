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

    end
end
