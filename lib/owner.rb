require'pry'
class Owner

  attr_accessor :name, :pets, :mood
  attr_reader :species
  @@all = []


  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    # binding.pry
    # @pets[:dogs] returns [#<Dog:0x000000029575c0 @mood="nervous", @name="Daisy">]
    @pets[:dogs].map {|dog|dog.mood = "happy"}
  end

end
