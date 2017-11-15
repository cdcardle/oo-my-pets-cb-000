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
    species.scan(/\A[^aeiou]/).count > 0 ? "I am a #{species}." : "I am an #{species}."
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
    self.pets[:dogs].mood = "happy"
  end

  def play_with-cats
    self.pets[:cats].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes].mood = "happy"
  end

  def sell_pets
    self.pets.values.each do |array|
      array.each do |pet|
        pet.mood = "nervous"
      end
    end
  end
end
