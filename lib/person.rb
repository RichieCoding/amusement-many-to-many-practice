class Person
  attr_accessor :name, :age, :courage

  @@all = []

  def initialize(name, age, courage)
    @name = name
    @age = age
    @courage = courage
    @@all << self
  end

  def self.all
    @@all
  end

  def get_on_ride(ride)
    Amusement.new(ride, self)
  end

  def rides
    Amusement.all.select do |ride|
      ride.name == self
    end
  end

  def can_i_get_on(ride)
    if ride.excitement_level <= self.courage
      "Yes! Go and have fun."
    else
      "Sorry, looks like you're a scaredy cat"
    end
  end


  end