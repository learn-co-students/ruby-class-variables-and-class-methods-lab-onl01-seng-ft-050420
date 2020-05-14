class Song
    attr_accessor :name, :artist, :genre 
    @@count = 0
    @@artists = []
    @@genres = []
    @@artist_count = {}
         
    def initialize(song, artist, genre) 
        @@count += 1 
        @@genres << genre 
        @@artists << artist 
        @name = song
        @artist = artist
        @genre = genre
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
        genre_count = {}
        @@genres.each do |g|
            if !genre_count.key?(g)
                genre_count[g] = 1
             else
               genre_count[g] += 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |a|
            if artist_count.key?(a)
                artist_count[a] += 1
            else
                artist_count[a] = 1
            end
        end
        artist_count
    end
    
end