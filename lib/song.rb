class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre  
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
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
    genre_count = Hash.new(0)
    @@genres.each {|i| genre_count[i] += 1}
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|i| artist_count[i] += 1}
    artist_count
  end
  
end
