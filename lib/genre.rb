class Genre
  @@all = []
  
  attr_accessor :name

def initialize(name)
  @name = name
  save
end

def save
  @@all << self
end

def self.all
  @@all
end

def songs
Song.all.select {|song| song.genre}
end

def artists
  songs.map {|song| song.artist}
end

end