class Song 
  attr_accessor :artist, :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end   
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end   
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_by_filename(song)
    Song.new = song 
    puts song 
  end 
  
end   