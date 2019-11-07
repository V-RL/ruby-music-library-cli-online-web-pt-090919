class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
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
  
  def self.create(name)
    self.new = name.save 
    
  end
  
  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end
  
  def self.find_or_create_by_name
  end
  
end