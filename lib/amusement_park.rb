class Amusement
  attr_accessor :ride_info, :name

  @@all = []

  def initialize(ride_info, name)
    @ride_info = ride_info
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

end