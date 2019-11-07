class Artist
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all 
    @@all 
  end
  
  def save
    @@all << self
  end
  
  def self.destroy_all
    @@all.clear 
  end
  
  def self.create
    artist = self.new
    @@all << artist
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  
  
  
    
    
    
  
  
    
    
  
end