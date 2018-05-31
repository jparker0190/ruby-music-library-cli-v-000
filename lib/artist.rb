class Artist
  @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
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
  def add_song(song)
    @songs << song
    song.artist = self
  end
end
