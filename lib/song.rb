require "pry"
class Song
@@genres = []
@@artists = []
@@count = 0
attr_accessor :artist, :genre, :name

def initialize (name, artist, genre)
@artist = artist
@genre = genre
@name = name
@@count +=1
@@genres << genre
@@artists << artist

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
        hash = Hash.new(0)
        @@genres.each{|key| hash[key] += 1}
    hash
    
end
def self.artist_count
hash = Hash.new(0)
        @@artists.each{|key| hash[key] += 1}
    hash
end
end