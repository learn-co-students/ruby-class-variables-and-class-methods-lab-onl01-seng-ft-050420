class Song
  
  attr_accessor :name, :artist, :genre, :count, :artists, :genres
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
    return @@count
  end
  
  def self.genres
    unique_genres = []
    
    @@genres.each {|genre| unique_genres << genre if !unique_genres.include?(genre)}
    
    return unique_genres
  end
  
  def self.artists
    unique_artists = []
    
    @@artists.each {|artist| unique_artists << artist if !unique_artists.include?(artist)}
    
    return unique_artists
  end
  
  def self.genre_count
    genres_hash = {}
    
    @@genres.each do |genre|
      if genres_hash[genre] == NIL
        genres_hash[genre] = 1
      else
        genres_hash[genre] += 1
      end
    end
    
    return genres_hash
  end
  
  def self.artist_count
    artists_hash = {}
    
    @@artists.each do |artist|
      if artists_hash[artist] == NIL
        artists_hash[artist] = 1
      else
        artists_hash[artist] += 1
      end
    end
    
    return artists_hash
  end
  
end