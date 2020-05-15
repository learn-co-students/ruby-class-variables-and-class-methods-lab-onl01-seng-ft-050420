class Song
  @@count =0
  @@artists =[]
  @@artist =[]
  @@genres =[]
  @@genre=[]
  
  attr_accessor :name, :artist, :genre
  def initialize (name,artist,genre)
    @name =name
    @artist =artist
    @genre =genre
    
    if !(@@genre.include?(genre))
      @@genre << genre
    end
    
    if !(@@artist.include?(artist))
      @@artist << artist
    end
  
    @@count +=1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genre
  end
  
  def self.artists
     @@artist
  end
  
  def self.genre_count
    hash=Hash.new(0)
    @@genres.each do |x|
      hash[x] +=1
    end
    hash
  end
  
   def self.artist_count
    hash=Hash.new(0)
    @@artists.each do |x|
      hash[x] +=1
    end
    hash
  end
  
end
