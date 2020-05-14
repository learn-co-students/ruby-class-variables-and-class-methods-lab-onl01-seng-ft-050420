class Song
  attr_reader :name, :genre, :artist
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_counts = {}
    @@genres.uniq.each{|g| genre_counts[g] = @@genres.count(g)}
    genre_counts
  end
  
  def self.artist_count
    artist_counts = {}
    @@artists.uniq.each{|g| artist_counts[g] = @@artists.count(g)}
    artist_counts
  end
    
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

end
    
  
  