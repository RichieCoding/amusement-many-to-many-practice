require "pry"

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
    arr = []
    Amusement.all.each do |ride|
      if ride.name == self
        arr << ride.ride_info.name
      end
    end
    arr
  end

  def can_i_get_on(ride)
    if ride.excitement_level <= self.courage
      "Yes! Go and have fun."
    else
      "Sorry, looks like you're a scaredy cat"
    end
  end


  end