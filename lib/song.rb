class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    
  end
  
  def self.count
     return @@count
  end 
  
  def self.genres
    return @@genres.uniq
  end
  
  def self.artists
    return @@artists.uniq
  end
    
  def self.genre_count
    
    genre_num = {}
    @@genres.each do | gen | 
      if genre_num[gen]
        genre_num[gen] += 1 
      else
        genre_num[gen] = 1
      end
    end
    
    genre_num
  end
  
  
  def self.artist_count 
    artist_count= Hash.new
    @@artists.each do |art| 
      if artist_count[art]
        artist_count[art] += 1 
      else
        artist_count[art] = 1
      end
    end
    artist_count
  end
  
end
