class Song 
  
  attr_accessor :name, :artist 
  
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
  def self.new_by_filename(filename)
    song_details = filename.chomp(".mp3")
  end 
  
  def artist_name(name)
    
  end 
end 