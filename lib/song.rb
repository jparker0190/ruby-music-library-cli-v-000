class Song
  @@all = []
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def self.all
    @@all
  end
  def self.destroy_all
    @@all.clear
  end
  def save
    @@all << self
  end
  def self.create(name)
    yeppers = self.new(name)
    yeppers.save
    yeppers
  end
end
