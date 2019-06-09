class Amusement
  attr_accessor :ride, :name

  @@all = []

  def initialize(ride, name)
    @ride = ride
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

end