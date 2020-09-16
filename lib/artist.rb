class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def self.find_or_create_by_name(name)
   self.find(name) ? self.find(name) : self.new(name)
  end 
  
  def self.find 
    self.all.find {|artist| artist.name == name}
  end 
  
  def print_songs
    songs.each {|song| song.artist == artist}
  end 
end 