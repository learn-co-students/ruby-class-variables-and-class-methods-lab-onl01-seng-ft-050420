require 'pry'
class Song
  attr_accessor :name, :genre, :artist
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist  
    @genre = genre
    @@genres << genre
    @@count += 1
    @@artists << artist
  end
  
  @@count = 0
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  @@genres = []
  @@artists = []
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genre_count
    #hash[namesgenre] => song_count
    g_count = {}
    #@@genres = ["pop", "rock", "pop"]
    @@genres.each do |genre|
          if g_count[genre] 
             g_count[genre] +=1
          else
            g_count[genre] = 1
          end
      end
      g_count
    end
  
  def self.artist_count
    all_artists = {}
    @@artists.collect do |artist|
      if all_artists[artist]
        all_artists[artist] += 1 
      else
        all_artists[artist] = 1
      end
    end
    all_artists
  end

end
