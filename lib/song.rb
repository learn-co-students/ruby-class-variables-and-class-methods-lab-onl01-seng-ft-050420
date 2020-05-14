class Song
    attr_accessor :name, :artist, :genre 
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
         
    def initialize(song, artist, genre) 
        @@count += 1 
        @@genres << genre 
        @@artists << artist 
        @name = song
        @artist = artist
        @genre = genre
        if !@@genre_count.key?(@genre)
            @@genre_count[@genre] = 1
         else
           @@genre_count[@genre] += 1
        end
        if @@artist_count.key?(@artist)
            @@artist_count[@artist] += 1
        else
            @@artist_count[@artist] = 1
        end
   
    end

    def self.count
        @@count
    end

    def self.artists
        unique_artists = []
        @@artists.each do |a|
            unique_artists << a if !unique_artists.include?(a)
        end
        unique_artists
    end

    def self.genres
        unique_genres = []
        @@genres.each do |g|
            unique_genres << g if !unique_genres.include?(g)
        end
        unique_genres
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end
    
end