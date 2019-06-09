require "pry"

class Ride
  attr_accessor :name, :type, :excitement_level

  @@all = []


  def initialize(name, type, excitement_level)
    @name = name
    @type = type
    @excitement_level = excitement_level
    @@all << self
  end

  def self.all
    @@all
  end
  

  def who_got_on
    Amusement.all.select do |person| 
      person.ride == self
    end
  end


end